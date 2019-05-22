import 'package:dio/dio.dart';
import 'package:quebex_app_search_2/model/search_result.dart';

class HttpService {
  HttpService._();
  factory HttpService() => HttpService._();

  Future<List<Result>> search(String query) async {
    Dio dio = Dio();

    var response =
        await dio.get('https://api.reelnepal.com/api/search/all?key=$query');
    List<dynamic> results = response.data['result'];

    return results.map((result) => Result.fromJson(result)).toList();
  }
}
