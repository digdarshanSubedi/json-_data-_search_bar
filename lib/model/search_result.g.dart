// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResult(
      category: json['category'] as String,
      searchThumb: json['searchThumb'] as String,
      details: json['details'] as String,
      id: json['id'] as int,
      urlTitle: json['urlTitle'] as String,
      name: json['name'] as String);
}

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'urlTitle': instance.urlTitle,
      'details': instance.details,
      'searchThumb': instance.searchThumb,
      'category': instance.category
    };
