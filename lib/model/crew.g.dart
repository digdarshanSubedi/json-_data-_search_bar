// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return Crew(
      crewId: json['crewId'] as int,
      crewName: json['crewName'] as String,
      name: json['name'] as String,
      nameNepali: json['nameNepali'] as String,
      gender: json['gender'] as String,
      dob: json['dob'] as String,
      hasBiography: json['hasBiography'] as bool,
      miniBio: json['miniBio'] as String,
      fullBio: json['fullBio'] as String,
      profilePhoto: json['profilePhoto'] as String,
      designation: json['designation'] as String,
      filmography: (json['filmography'] as List)
          ?.map((e) => e == null
              ? null
              : Filmography.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      roleName: json['roleName'] as String,
      isVerified: json['isVerified'] as bool,
      topVideos: json['topVideos'] as List,
      topNews: json['topNews'] as List);
}

Map<String, dynamic> _$CrewToJson(Crew instance) => <String, dynamic>{
      'crewId': instance.crewId,
      'crewName': instance.crewName,
      'name': instance.name,
      'nameNepali': instance.nameNepali,
      'gender': instance.gender,
      'dob': instance.dob,
      'hasBiography': instance.hasBiography,
      'miniBio': instance.miniBio,
      'fullBio': instance.fullBio,
      'profilePhoto': instance.profilePhoto,
      'designation': instance.designation,
      'filmography': instance.filmography,
      'roleName': instance.roleName,
      'isVerified': instance.isVerified,
      'topVideos': instance.topVideos,
      'topNews': instance.topNews
    };
