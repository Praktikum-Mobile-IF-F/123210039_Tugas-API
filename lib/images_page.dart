import 'package:flutter/material.dart';
import 'api_data_source.dart';
import 'artist_model.dart';

class ArtistImages extends StatelessWidget {
  final int? id;

  const ArtistImages({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artist Images'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: ApiDataSource.instance.loadImages(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<dynamic>? artistImagesData = snapshot.data!['items'];
            if (artistImagesData != null && artistImagesData.isNotEmpty) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: artistImagesData.length,
                itemBuilder: (context, index) {
                  final item = Items.fromJson(artistImagesData[index]);
                  return GridTile(
                    child: Image.network(
                      item.imageUrl ?? '',
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            } else {
              return Center(child: Text('No data available'));
            }
          }
        },
      ),
    );
  }
}
