import 'package:equatable/equatable.dart';

class AlbumEntity extends Equatable {
  final int? idAlbum;
  final String? description;
  final String? stickersFolder;
  final String? urlImage;
  final int? numberOfFinalists;
  final String? prizeDescription;

  const AlbumEntity({
    this.idAlbum,
    this.description,
    this.stickersFolder,
    this.urlImage,
    this.numberOfFinalists,
    this.prizeDescription,
  });

  @override
  List<Object?> get props {
    return [
      idAlbum,
      description,
      stickersFolder,
      urlImage,
      numberOfFinalists,
      prizeDescription,
    ];
  }
}
