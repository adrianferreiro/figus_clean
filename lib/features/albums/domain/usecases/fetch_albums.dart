import 'package:figus_clean/core/resources/data_state.dart';
import 'package:figus_clean/core/usecases/usecase.dart';
import 'package:figus_clean/features/albums/domain/entities/album.dart';
import 'package:figus_clean/features/albums/domain/repository/albums_repository.dart';

class FetchAlbumsUseCase
    implements Usecase<DataState<List<AlbumEntity>>, void> {
  final AlbumsRepository _albumsRepository;
  FetchAlbumsUseCase(this._albumsRepository);

  @override
  Future<DataState<List<AlbumEntity>>> call({void params}) {
    return _albumsRepository.fetchAlbums();
  }
}
