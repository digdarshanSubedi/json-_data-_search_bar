// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filmography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Filmography _$FilmographyFromJson(Map<String, dynamic> json) {
  return Filmography(
      movieId: json['movieId'] as int,
      name: json['name'] as String,
      nameNepali: json['nameNepali'] as String,
      coverPhoto: json['coverPhoto'] as String,
      movieStatusId: json['movieStatusId'] as int,
      status: json['status'] as String,
      crewDesignation: json['crewDesignation'] as String);
}

Map<String, dynamic> _$FilmographyToJson(Filmography instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'name': instance.name,
      'nameNepali': instance.nameNepali,
      'coverPhoto': instance.coverPhoto,
      'movieStatusId': instance.movieStatusId,
      'status': instance.status,
      'crewDesignation': instance.crewDesignation
    };
