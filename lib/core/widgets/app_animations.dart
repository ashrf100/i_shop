import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScaleAnimationWidget extends StatelessWidget {
  final AnimationController controller;
  final Widget child;
  final double beginScale;
  final double endScale;
  final Curve curve;

  const ScaleAnimationWidget({
    Key? key,
    required this.controller,
    required this.child,
    this.beginScale = 1.0,
    this.endScale = 0.95,
    this.curve = Curves.easeInOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Animation<double> scaleAnimation = Tween<double>(
      begin: beginScale,
      end: endScale,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: curve,
    ));
    return ScaleTransition(scale: scaleAnimation, child: child);
  }
}

class FadeAnimationWidget extends StatelessWidget {
  final AnimationController controller;
  final Widget child;
  final double beginOpacity;
  final double endOpacity;
  final Curve curve;

  const FadeAnimationWidget({
    Key? key,
    required this.controller,
    required this.child,
    this.beginOpacity = 0.0,
    this.endOpacity = 1.0,
    this.curve = Curves.easeInOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Animation<double> fadeAnimation = Tween<double>(
      begin: beginOpacity,
      end: endOpacity,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: curve,
    ));
    return FadeTransition(opacity: fadeAnimation, child: child);
  }
}

class SlideAnimationWidget extends StatelessWidget {
  final AnimationController controller;
  final Widget child;
  final Offset beginOffset;
  final Offset endOffset;
  final Curve curve;

  const SlideAnimationWidget({
    Key? key,
    required this.controller,
    required this.child,
    this.beginOffset = const Offset(0, 0.2),
    this.endOffset = Offset.zero,
    this.curve = Curves.easeOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Animation<Offset> slideAnimation = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: curve,
    ));
    return SlideTransition(position: slideAnimation, child: child);
  }
}

class ButtonAnimationWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final void Function() onTap;

  const ButtonAnimationWidget({
    super.key,
    required this.child,
    required this.onTap,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.easeInOut,
  });

  @override
  _ButtonAnimationWidgetState createState() => _ButtonAnimationWidgetState();
}

class _ButtonAnimationWidgetState extends State<ButtonAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        _controller.forward().then((_) => _controller.reverse());
      },
      child: ScaleAnimationWidget(
        controller: _controller,
        child: widget.child,
      ),
    );
  }
}
