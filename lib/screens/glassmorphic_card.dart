import 'package:flutter/material.dart';

class GlassmorphicCard extends StatelessWidget {
  final Widget child;

  const GlassmorphicCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
