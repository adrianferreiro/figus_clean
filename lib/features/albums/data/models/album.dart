import 'package:figus_clean/features/albums/domain/entities/album.dart';

class AlbumModel extends AlbumEntity {
  AlbumModel({
    required super.idAlbum,
    required super.description,
    required super.stickersFolder,
    required super.urlImage,
    required super.numberOfFinalists,
    required super.prizeDescription,
  });

  factory AlbumModel.fromJson(json) {
    return AlbumModel(
      idAlbum: json["idAlbum"],
      description: json["description"],
      stickersFolder: json["stickersFolder"],
      urlImage: json["urlImage"],
      numberOfFinalists: json["numberOfFinalists"],
      prizeDescription: json["prizeDescription"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idAlbum': idAlbum,
      'description': description,
      'stickersFolder': stickersFolder,
      'urlImage': urlImage,
      'numberOfFinalists': numberOfFinalists,
      'prizeDescription': prizeDescription,
    };
  }

  factory AlbumModel.fromEntity(AlbumEntity albumEntity) {
    return AlbumModel(
      idAlbum: albumEntity.idAlbum,
      description: albumEntity.description,
      stickersFolder: albumEntity.stickersFolder,
      urlImage: albumEntity.urlImage,
      numberOfFinalists: albumEntity.numberOfFinalists,
      prizeDescription: albumEntity.prizeDescription,
    );
  }
}
