import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/shared/constants/app_colors.dart';

class CustomBottomNavigation extends StatefulWidget {
  final Function(int) onChangingIndex;
  final int currentIndex;
  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onChangingIndex,
  });

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        if (value == 2) {
          context.push('/add_movie');
        } else {
          widget.onChangingIndex(value);
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Acceuil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_creation_outlined),
          label: 'Films',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            child: Icon(Icons.add, color: Colors.white),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favoris',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Parametres',
        ),
      ],
    );
  }
}
