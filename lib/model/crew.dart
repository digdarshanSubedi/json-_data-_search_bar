import 'package:quebex_app_search_2/model/filmography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crew.g.dart';

@JsonSerializable()
class Crew {
  int crewId;
  String crewName;
  String name;
  String nameNepali;
  String gender;
  String dob;
  bool hasBiography;
  String miniBio;
  String fullBio;
  String profilePhoto;
  String designation;
  List<Filmography> filmography;
  String roleName;
  bool isVerified;
  List topVideos;
  List topNews;

  Crew(
      {this.crewId,
      this.crewName,
      this.name,
      this.nameNepali,
      this.gender,
      this.dob,
      this.hasBiography,
      this.miniBio,
      this.fullBio,
      this.profilePhoto,
      this.designation,
      this.filmography,
      this.roleName,
      this.isVerified,
      this.topVideos,
      this.topNews});

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

  Map<String, dynamic> toJson() => _$CrewToJson(this);
}
