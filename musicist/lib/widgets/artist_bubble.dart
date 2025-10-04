// lib/widgets/artist_bubble.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistBubble extends StatelessWidget {
  final String imageAsset;
  final String name;

  const ArtistBubble({
    super.key,
    required this.imageAsset,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageAsset),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
