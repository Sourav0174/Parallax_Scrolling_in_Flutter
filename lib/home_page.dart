import 'package:flutter/material.dart';
import 'package:parallax_slide_animation/tabs.dart';

import 'exhibition_bottom_sheet.dart';
import 'sliding_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0077B6), // Bright blue for the header
        elevation: 5,
        shadowColor: const Color(0xFFCAF0F8),
        title: const Text(
          'Flutter Pro Series',
          style: TextStyle(
            fontSize: 24, // Adjusted for a sleek design
            fontWeight: FontWeight.bold,
            color: Colors.white, // White for clean contrast
          ),
        ),
      ),
      backgroundColor:
          const Color(0xFFF0F8FF), // Light pastel blue for calm feel
      body: const Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 16),
                // Tabs Section
                Tabs(),

                SlidingCardsView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
