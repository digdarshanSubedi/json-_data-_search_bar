import 'package:flutter/foundation.dart';
import 'package:quebex_app_search_2/model/crew.dart';

import 'package:quebex_app_search_2/model/search_result.dart';
import 'package:quebex_app_search_2/services/http_service.dart';

class CrewService {
  CrewService._(); //initalizr makign instance
  factory CrewService() => CrewService._();
  Future<Crew> getCrewDetail(int crewId) async {
    var result =
        await HttpService().get('https://api.reelnepal.com/api/crew/$crewId');
    return Crew.fromJson(result);
  }
}
