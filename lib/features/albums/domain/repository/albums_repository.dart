import 'package:figus_clean/core/resources/data_state.dart';
import 'package:figus_clean/features/albums/domain/entities/album.dart';

abstract class AlbumsRepository {
  Future<DataState<List<AlbumEntity>>> fetchAlbums();
}
