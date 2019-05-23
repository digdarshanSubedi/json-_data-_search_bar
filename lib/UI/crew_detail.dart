import 'package:flutter/material.dart';
import 'package:quebex_app_search_2/model/crew.dart';
import 'package:quebex_app_search_2/services/crew_services.dart';

class CrewDetailPage extends StatefulWidget {
  final int crewId;
  final String crewName;
  CrewDetailPage(
    this.crewId,
    this.crewName,
  );

  @override
  _CrewDetailPageState createState() => _CrewDetailPageState();
}

class _CrewDetailPageState extends State<CrewDetailPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.crewId);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.crewName),
      ),
      body: FutureBuilder<Crew>(
          future: CrewService().getCrewDetail(widget.crewId),
          builder: (context, snapshot) {
            if (snapshot.hasData)
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250.0,
                      height: 450.0,

                      /* child: Image.network(
                          'https://content.reelnepal.com/photos/crewstanphotos/im214x317/214x317${snapshot.data.profilePhoto}'),*/
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://content.reelnepal.com/photos/crewstanphotos/im214x317/214x317${snapshot.data.profilePhoto}'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                    ),
                  ),
                  Text(
                    snapshot.data.name,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    snapshot.data.nameNepali,
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          }),
    );
  }
}
