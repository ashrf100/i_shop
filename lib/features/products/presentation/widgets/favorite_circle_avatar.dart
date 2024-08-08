import 'package:flutter/material.dart';
import 'package:i_shop/core/const/app_colors.dart';

class FaverotCircleAvatar extends StatefulWidget {
  const FaverotCircleAvatar({
    super.key,
  });

  @override
  State<FaverotCircleAvatar> createState() => _FaverotCircleAvatarState();
}

class _FaverotCircleAvatarState extends State<FaverotCircleAvatar> {
  bool _isTapped = false;

  void _toggleTap() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.darkGray,
      child: IconButton(
        icon: Icon(_isTapped ? Icons.favorite_rounded : Icons.favorite_border,
            color: Colors.white),
        onPressed: () {
          _toggleTap();
        },
      ),
    );
  }
}
