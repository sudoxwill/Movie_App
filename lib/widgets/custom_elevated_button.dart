import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_colors.dart';
import 'package:movie_app/shared/constants/app_radius.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final double width;
  final VoidCallback onPressed;
  const CustomElevatedButton({
    super.key,
    required this.label,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: AppRadius.sm),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.lightBackground,
        ),
        child: Text(label),
      ),
    );
  }
}
