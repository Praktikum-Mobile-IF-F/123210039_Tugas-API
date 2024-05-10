import 'package:flutter/material.dart';
import 'package:tugas_api/artist_model.dart';
import 'package:tugas_api/images_page.dart';

import 'api_data_source.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artist List'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: ApiDataSource.instance.loadArtist(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final artistData = snapshot.data!['items'] as List<dynamic>;
            return ListView.builder(
              itemCount: artistData.length,
              itemBuilder: (context, index) {
                final artist = Items.fromJson(artistData[index]);
                return ListTile(
                  title: Text(artist.name ?? ''),
                  // You can add more details here if needed
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ArtistImages(
                          id: artist.id,
                        ))),
                );
              },
            );
          }
        },
      ),
    );
  }
}
