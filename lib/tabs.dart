import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 24),
        MyTab(text: 'New', isSelected: false),
        MyTab(text: 'Popular', isSelected: true),
        MyTab(text: 'Trending', isSelected: false),
      ],
    );
  }
}

class MyTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const MyTab({super.key, required this.isSelected, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: isSelected ? 18 : 16,
              color: isSelected
                  ? const Color(0xFF0077B6)
                  : const Color(0xFF90E0EF),
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 4,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: isSelected ? const Color(0xFF00B4D8) : Colors.transparent,
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: const Color(0xFF00B4D8).withOpacity(0.4),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ]
                  : [],
            ),
          )
        ],
      ),
    );
  }
}
