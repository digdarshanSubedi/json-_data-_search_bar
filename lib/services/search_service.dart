import 'package:quebex_app_search_2/model/search_result.dart';

import 'http_service.dart';

class SearchService {
  SearchService._();
  factory SearchService() => SearchService._();
  Future<List<SearchResult>> search(String query) async {
    List<dynamic> result = await HttpService()
        .get('https://api.reelnepal.com/api/search/all?key=$query');
    return result
        .map((searchResult) => SearchResult.fromJson(searchResult))
        .toList();
  }
}
