import 'package:dio/dio.dart';
import 'package:quebex_app_search_2/model/api_response.dart';

class HttpService {
  HttpService._();
  factory HttpService() => HttpService._();

  Dio _dio = Dio();

  Future<dynamic> get(String path) async {
    try {
      Response response = await _dio.get(path);
      // TODO: Response response1 = await dio.post(path, data: {});
      var apiResponse = ApiResponse.fromJson(response.data);
      return apiResponse.result ?? apiResponse.errorMessage;
    } on DioError catch (e) {
      if (e.message.contains('SocketException')) {
        print('No Internet Connection!');
      } else
        print(e.message);
    }
  }

  /* Future<List<Result>> search(String query) async {
    Dio dio = Dio();

    var response =
        await dio.get('https://api.reelnepal.com/api/search/all?key=$query');
    List<dynamic> results = response.data['result'];

    return results.map((result) => Result.fromJson(result)).toList();
  } */
}
