import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';
import 'package:movie_app/screens/movies_screen.dart';
import 'package:movie_app/screens/setting_screen.dart';
import 'package:movie_app/widgets/custom_bottom_navigation.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  final _screens = [
    HomeScreen(),
    MoviesScreen(),
    Placeholder(),
    Placeholder(),
    SettingScreen(),
  ];
  int _currentIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onChangingIndex: changeIndex,
      ),
    );
  }
}
