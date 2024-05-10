import 'base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();
  Future<Map<String, dynamic>> loadArtist() {
    return BaseNetwork.get("artists");
  }

  Future<Map<String, dynamic>> loadImages(int? id) {
    return BaseNetwork.get("artists/$id/images");
  }
}