import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicist/widgets/song_card.dart'; // Import the custom widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFF121212);

    return Scaffold(
      backgroundColor: backgroundColor,
      extendBody: true,
      body: SingleChildScrollView(
        // We add padding at the top level to avoid the system UI
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We add horizontal padding to the app bar separately
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildAppBar(),
              ),
              const SizedBox(height: 30),
              _buildCategoryChips(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionHeader('Featuring Today'),
              ),
              const SizedBox(height: 20),
              _buildHorizontallyScrollingList(), // Using the new efficient list
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionHeader('Recently Played'),
              ),
              const SizedBox(height: 20),
              _buildHorizontallyScrollingList(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionHeader('Mixes for you'),
              ),
              const SizedBox(height: 20),
              _buildHorizontallyScrollingList(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionHeader('Made for You'),
              ),
              const SizedBox(height: 20),
              _buildHorizontallyScrollingList(),
              const SizedBox(
                  height: 100), // Extra space at the bottom for scrolling
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildAppBar() {
    return Row(
      children: [
        Text(
          '👋 Hi Logan,\nGood Evening',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.notifications_none,
              color: Colors.white, size: 28),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        const CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
        ),
      ],
    );
  }

  Widget _buildCategoryChips() {
    // Dummy list of categories
    final categories = ['For you', 'Relax', 'Workout', 'Travel', 'Focus'];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        // Add padding for a better swipe feel
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor: const Color(0xFF2E2E2E),
              labelStyle: GoogleFonts.poppins(color: Colors.white),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (title == 'Recently Played')
          TextButton(
            onPressed: () {},
            child: Text(
              'See more',
              style: GoogleFonts.poppins(color: Colors.grey),
            ),
          ),
      ],
    );
  }

  // --- IMPROVED AND REUSABLE HORIZONTAL LIST ---
  Widget _buildHorizontallyScrollingList() {
    // Dummy data for our lists
    final items = [
      {'image': 'assets/images/album1.png', 'title': 'Inside Out'},
      {'image': 'assets/images/album2.png', 'title': 'Young'},
      {'image': 'assets/images/album1.png', 'title': 'Beach House'},
      {'image': 'assets/images/album2.png', 'title': 'Kills You'},
      {'image': 'assets/images/album1.png', 'title': 'Another Song'},
    ];

    return SizedBox(
      height: 180,
      // We use ListView.builder for better performance
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // Add padding to the list for a better swipe feel
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          // We build a SongCard for each item in our list
          return SongCard(
            imageAsset: item['image']!,
            title: item['title']!,
          );
        },
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: GoogleFonts.poppins(),
      unselectedLabelStyle: GoogleFonts.poppins(),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music), label: 'Your Library'),
      ],
    );
  }
}
