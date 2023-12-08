import 'package:dev_core/widget/misc/opacity_title.widget.dart';
import 'package:flutter/material.dart';

class TitleAnimatedScaffold extends StatefulWidget {
  final Widget child;
  final String title;
  final bool showBackButton;
  final bool showActionButton;
  final VoidCallback? onBackButtonPressed;
  final VoidCallback? onActionButtonPressed;

  const TitleAnimatedScaffold({
    super.key,
    required this.child,
    required this.title,
    this.showBackButton = true,
    this.showActionButton = false,
    this.onBackButtonPressed,
    this.onActionButtonPressed,
  });

  @override
  State<TitleAnimatedScaffold> createState() => _TitleAnimatedScaffoldState();
}

class _TitleAnimatedScaffoldState extends State<TitleAnimatedScaffold> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (!_scrollController.hasClients) return;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double scrollY = !_scrollController.hasClients
        ? 0
        : _scrollController.offset > 100
            ? 100
            : _scrollController.offset < 0
                ? 0
                : _scrollController.offset;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(child: widget.child),
          Positioned(
            top: 0,
            child: widget.showActionButton
                ? Container() //TODO
                : OpacityTitle(scrollY: scrollY, title: widget.title),
          ),
        ],
      ),
    );
  }
}
