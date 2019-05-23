import 'package:json_annotation/json_annotation.dart';

part 'filmography.g.dart';

@JsonSerializable()
class Filmography {
  int movieId;
  String name;
  String nameNepali;
  String coverPhoto;
  int movieStatusId;
  String status;
  String crewDesignation;

  Filmography(
      {this.movieId,
      this.name,
      this.nameNepali,
      this.coverPhoto,
      this.movieStatusId,
      this.status,
      this.crewDesignation});

  factory Filmography.fromJson(Map<String, dynamic> json) =>
      _$FilmographyFromJson(json);

  Map<String, dynamic> toJson() => _$FilmographyToJson(this);
}
