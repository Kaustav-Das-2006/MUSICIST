import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicist/widgets/artist_bubble.dart';
import 'package:musicist/widgets/genre_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFF121212);
    const textFieldColor = Color(0xFF2E2E2E);
    const subtextColor = Colors.grey;

    // --- UPDATED AND EXPANDED LISTS ---
    final trendingArtists = [
      {'image': 'assets/images/artist1.jpg', 'name': 'Childish Gambino'},
      {'image': 'assets/images/artist2.jpg', 'name': 'Marvin Gaye'},
      {'image': 'assets/images/artist3.jpg', 'name': 'Kanye West'},
      {'image': 'assets/images/artist4.jpg', 'name': 'Justin Bieber'},
      {'image': 'assets/images/artist5.jpg', 'name': 'Arijit Singh'},
      {'image': 'assets/images/artist6.jpg', 'name': 'Shreya Ghoshal'},
      {'image': 'assets/images/artist7.jpg', 'name': 'The Weeknd'},
      {'image': 'assets/images/artist8.jpg', 'name': 'Kishore Kumar'},
    ];

    final browseGenres = [
      {'image': 'assets/images/genre1.jpg', 'name': 'TAMIL'},
      {'image': 'assets/images/genre2.jpg', 'name': 'INTERNATIONAL'},
      {'image': 'assets/images/genre3.jpg', 'name': 'POP'},
      {'image': 'assets/images/genre4.jpg', 'name': 'HIP-HOP'},
      {'image': 'assets/images/genre5.jpg', 'name': 'DANCE'},
      {'image': 'assets/images/genre6.jpg', 'name': 'COUNTRY'},
      {'image': 'assets/images/genre7.jpg', 'name': 'INDIE'},
      {'image': 'assets/images/genre8.jpg', 'name': 'JAZZ'},
      {'image': 'assets/images/genre9.jpg', 'name': 'BOLLYWOOD'},
      {'image': 'assets/images/genre10.jpg', 'name': 'ROCK'},
      {'image': 'assets/images/genre11.jpg', 'name': 'CLASSICAL'},
      {'image': 'assets/images/genre12.jpg', 'name': 'METAL'},
    ];
    // ------------------------------------

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // -- Search Bar --
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search songs, artist, album o...',
                  hintStyle: GoogleFonts.poppins(color: subtextColor),
                  prefixIcon: const Icon(Icons.search, color: subtextColor),
                  filled: true,
                  fillColor: textFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // -- Trending Artists Section --
              Text(
                'Trending artists',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingArtists.length,
                  itemBuilder: (context, index) {
                    final artist = trendingArtists[index];
                    return ArtistBubble(
                        imageAsset: artist['image']!, name: artist['name']!);
                  },
                ),
              ),
              const SizedBox(height: 30),

              // -- Browse Section --
              Text(
                'Browse',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: browseGenres.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 16 / 9,
                ),
                itemBuilder: (context, index) {
                  final genre = browseGenres[index];
                  return GenreCard(
                      genre: genre['name']!, imageAsset: genre['image']!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
