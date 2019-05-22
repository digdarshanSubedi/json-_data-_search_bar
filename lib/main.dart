import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:quebex_app_search_2/model/search_result.dart';
import 'package:quebex_app_search_2/services/http_service.dart';

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
    // TODO: implement initState
    super.initState();
    myController.addListener(listener);
  }

  listener() async {
   setState(() {
     
   });
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
            onPressed: () {},
          )
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
                      child: FutureBuilder<List<Result>>(
                future: HttpService().search(myController.text),
                builder: (context, snapshot) {
                 
                  if (snapshot.hasData) {
                    if(snapshot.data.length==0){
                      return Center(child: Text("No Data"),);
                    }
                    return ListView.separated(
                      itemBuilder: (context, index) => ListTile(
                        leading: Image.network(snapshot.data[index].searchThumb??"https://content.reelnepal.com/photos/crewstanphotos/im40X54/40X54profile.jpg"),
                            title: Text(snapshot.data[index].name,),
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

Widget _searchListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('name'),
      ),
      ListTile(
        title: Text('name'),
      ),
      ListTile(
        title: Text('name'),
      ),
    ],
  );
}
