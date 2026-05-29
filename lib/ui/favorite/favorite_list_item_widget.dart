import 'package:flutter/material.dart';

class FavoriteListItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final VoidCallback delete;
  const FavoriteListItemWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.delete,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              IconButton(
                onPressed: delete,
                icon: const Icon(
                  Icons.heart_broken,
                  color: Colors.red)
                )
            ],
          ), 
        ),
    );
  }
}
