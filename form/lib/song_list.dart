import 'package:flutter/material.dart';

class SongListPage extends StatelessWidget {
  const SongListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> songs = [
      {
        'name': 'Song 1',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 1',
        'category': 'Pop',
      },
      {
        'name': 'Song 2',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 2',
        'category': 'Rock',
      },
      {
        'name': 'Song 3',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 3',
        'category': 'Jazz',
      },
      {
        'name': 'Song 4',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 4',
        'category': 'Classical',
      },
      {
        'name': 'Song 5',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 5',
        'category': 'Hip-Hop',
      },
      {
        'name': 'Song 6',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 6',
        'category': 'Country',
      },
      {
        'name': 'Song 7',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 7',
        'category': 'Blues',
      },
      {
        'name': 'Song 8',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 8',
        'category': 'Electronic',
      },
      {
        'name': 'Song 9',
        'image': 'https://via.placeholder.com/150',
        'singer': 'Singer 9',
        'category': 'Reggae',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Song List')),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(
                song['image']!,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, size: 50);
                },
              ),
              title: Text(song['name']!),
              subtitle: Text('${song['singer']} • ${song['category']}'),
            ),
          );
        },
      ),
    );
  }
}
