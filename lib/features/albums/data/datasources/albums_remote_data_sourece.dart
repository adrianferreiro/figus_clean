import 'package:dio/dio.dart';
import 'package:figus_clean/core/constants/constants.dart';
import 'package:figus_clean/features/albums/data/models/album.dart'; // Cambiado para usar AlbumModel
import 'package:figus_clean/features/albums/domain/entities/album.dart';

abstract class AlbumsRemoteDataSource {
  Future<List<AlbumEntity>> fetchAlbums();
}

class AlbumsRemoteDataSourceImpl implements AlbumsRemoteDataSource {
  final Dio dio;

  AlbumsRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<AlbumEntity>> fetchAlbums() async {
    try {
      final response = await dio.get('$apiBaseUrl/albums'); // URL de ejemplo
      if (response.statusCode == 200) {
        List<AlbumModel> albums = (response.data as List)
            .map((albumJson) => AlbumModel.fromJson(
                albumJson)) // Usando AlbumModel en lugar de AlbumEntity
            .toList();
        return albums;
      } else {
        throw DioException(
            requestOptions: RequestOptions(path: ''), response: response);
      }
    } catch (e) {
      throw DioException(requestOptions: RequestOptions(path: ''), error: e);
    }
  }
}
