import 'dart:io';

import 'package:dev_core/utils/functions/responsive.functions.dart';
import 'package:dev_core/widget/button/return_button.widget.dart';
import 'package:flutter/material.dart';

class OpacityTitle extends StatelessWidget {
  final String title;
  final double scrollY;
  final VoidCallback? onTap;

  const OpacityTitle({
    super.key,
    required this.title,
    required this.scrollY,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Container(
      width: mediaQuery.size.width,
      padding: EdgeInsets.only(
        top: formatHeight(4) +
            MediaQuery.of(context).padding.top +
            (Platform.isAndroid ? formatHeight(8) : 0),
        bottom: formatHeight(12),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .scaffoldBackgroundColor
            .withOpacity(1 * (scrollY / 100)),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context)
                .shadowColor
                .withOpacity(0.06 * (scrollY / 100)),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ReturnButton(onTap: onTap),
          sh(13),
          Expanded(
            child: Padding(
              padding: pw(27),
              child: Center(
                child: Opacity(
                  opacity: 1 * (scrollY / 100),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          sh(13),
          Opacity(
            opacity: 0,
            child: ReturnButton(onTap: () {}),
          ),
        ],
      ),
    );
  }
}
