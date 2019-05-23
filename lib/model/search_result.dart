import 'package:json_annotation/json_annotation.dart';
part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  final int id;
  final String name;
  final String urlTitle;
  final String details;
  final String searchThumb;
  final String category;

  SearchResult({
    this.category,
    this.searchThumb,
    this.details,
    this.id,
    this.urlTitle,
    this.name,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
