import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_buttons.dart';
import '../widgets/social_media_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [

          // Bagian profil menggunakan Expanded
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [

                    const SizedBox(height: 24),

                    // Widget ProfileHeader
                    const ProfileHeader(
                      name: 'Nama Mahasiswa',
                      nim: '21.11.0000',
                    ),

                    // Widget ProfileInfo
                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'email@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bagian tombol menggunakan Flexible
          Flexible(
            flex: 1,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [

                    // Widget ActionButtons
                    const ActionButtons(),

                    const SizedBox(height: 16),

                    // Widget SocialMediaRow
                    const SocialMediaRow(),

                    const SizedBox(height: 20),

                    // Tombol Tentang Aplikasi
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AboutScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.info_outline),
                      label: const Text('Tentang Aplikasi'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}