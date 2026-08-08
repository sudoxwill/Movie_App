import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_alpha.dart';
import 'package:movie_app/shared/constants/app_colors.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

enum BorderRadiusSide { left, right }

class ToggleElevatedButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final VoidCallback onPressed;
  final bool isActive;
  final BorderRadiusSide borderRadiusSide;
  const ToggleElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isActive,
    required this.icon,
    this.borderRadiusSide = BorderRadiusSide.left,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.toggleButtonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadiusSide == BorderRadiusSide.left
                ? BorderRadius.only(
                    topLeft: Radius.circular(AppSizes.xs),
                    bottomLeft: Radius.circular(AppSizes.xs),
                    topRight: Radius.zero,
                    bottomRight: Radius.zero,
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(AppSizes.xs),
                    bottomRight: Radius.circular(AppSizes.xs),
                    topLeft: Radius.zero,
                    bottomLeft: Radius.zero,
                  ),
          ),
          backgroundColor: isActive
              ? AppColors.primaryColor
              : context.colorScheme.onSurface.withAlpha(AppAlpha.subtle),
          foregroundColor: AppColors.lightBackground,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: AppSizes.sm,
          children: [icon, Text(label)],
        ),
      ),
    );
  }
}
