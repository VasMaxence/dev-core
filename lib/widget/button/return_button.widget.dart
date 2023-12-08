import 'package:auto_route/auto_route.dart';
import 'package:dev_core/utils/functions/responsive.functions.dart';
import 'package:dev_core/widget/button/theme/return_button.theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReturnButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;

  const ReturnButton({
    super.key,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final ReturnButtonTheme? theme =
        Theme.of(context).extension<ReturnButtonTheme>();

    return InkWell(
      onTap: () {
        if (onTap != null) return onTap!();
        context.router.pop();
      },
      child: Container(
        padding: theme?.padding ?? pwh(8, 27),
        decoration: theme?.decoration,
        child: child ??
            theme?.child ??
            SvgPicture.asset(
              "assets/svg/ic_back_arrow.svg",
              package: "dev_core",
              width: formatWidth(19),
            ),
      ),
    );
  }
}
