import 'package:dio/dio.dart';
import 'package:figus_clean/core/resources/data_state.dart';
import 'package:figus_clean/features/albums/data/datasources/albums_remote_data_sourece.dart';
import 'package:figus_clean/features/albums/domain/entities/album.dart';
import 'package:figus_clean/features/albums/domain/repository/albums_repository.dart';

class AlbumRepositoryImpl implements AlbumsRepository {
  final AlbumsRemoteDataSource remoteDataSource;

  AlbumRepositoryImpl({required this.remoteDataSource});

  @override
  Future<DataState<List<AlbumEntity>>> fetchAlbums() async {
    try {
      final albums = await remoteDataSource.fetchAlbums();
      return DataSucces(albums);
    } catch (e) {
      return DataFailed(e as DioException);
    }
  }
}
