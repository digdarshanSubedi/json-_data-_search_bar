import 'package:flutter/material.dart';
import 'package:quebex_app_search_2/UI/crew_detail.dart';
import 'package:quebex_app_search_2/UI/search_page.dart';
import 'package:quebex_app_search_2/model/search_result.dart';
import 'package:quebex_app_search_2/services/crew_services.dart';
import 'package:quebex_app_search_2/services/search_service.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quebex Search Data',
      home: MyCustomForm(),
    );
  }
}

// now defining custom form widget
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// this place defines corresponding state class
class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    myController.addListener(listener);
  }

  listener() async {
    setState(() {});
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Enter Name To Search '),
        backgroundColor: Colors.green,
        elevation: 5.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  ))
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
            ),
          ),
          Expanded(
            child: FutureBuilder<List<SearchResult>>(
                future: SearchService().search(myController.text),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    if (snapshot.data.length == 0) {
                      return Center(
                        child: Text("No Data"),
                      );
                    }
                    return ListView.separated(
                      itemBuilder: (context, index) => ListTile(
                            onTap: () {
                              return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CrewDetailPage(
                                          snapshot.data[index].id,
                                          snapshot.data[index].name)));
                            },
                            // TODO: Now add on tap here and navigate
                            leading: Image.network(snapshot
                                    .data[index].searchThumb ??
                                "https://content.reelnepal.com/photos/crewstanphotos/im40X54/40X54profile.jpg"),
                            title: Text(
                              snapshot.data[index].name,
                            ),
                          ),
                      separatorBuilder: (context, _) => Divider(),
                      itemCount: snapshot.data.length,
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
