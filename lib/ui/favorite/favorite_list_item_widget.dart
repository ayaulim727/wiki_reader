import 'package:flutter/material.dart';

class FavoriteListItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const FavoriteListItemWidget({super.key, required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(' '),
        width: 100,
        height: 10
      )
    );
  }
}