import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final String name;
  final String date;

  const CardContent({
    super.key,
    required this.name,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Title
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF03045E), // Deep blue for contrast
          ),
        ),
        const SizedBox(height: 8),
        // Subtitle
        Text(
          date,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF0077B6), // Lighter blue for text contrast
          ),
        ),
        const Spacer(),
        // Action Row
        Row(
          children: <Widget>[
            // Reserve Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00B4D8), // Bright blue button
                foregroundColor: Colors.white, // White text
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(24), // Smooth rounded corners
                ),
                shadowColor: Colors.black.withOpacity(0.2),
                elevation: 8, // Subtle elevation for a modern look
              ),
              onPressed: () {
                // Add your action here
              },
              child: const Text('Select'),
            ),
            const Spacer(),
            // Price Tag
            Row(
              children: const [
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF03045E), // Deep blue for strong emphasis
                  ),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xFF00B4D8),
                ),
                SizedBox(width: 16),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
