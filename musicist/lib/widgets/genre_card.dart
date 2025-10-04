// lib/widgets/genre_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  final String imageAsset;

  const GenreCard({
    super.key,
    required this.genre,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
            // Add a color filter for a dark overlay
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Text(
            genre,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
