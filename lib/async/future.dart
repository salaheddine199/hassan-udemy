// import 'package:cyberlinks/pages/home_page.dart';
import 'package:flutter/material.dart';

class AsyncProg extends StatefulWidget {
  @override
  _AsyncProgState createState() => _AsyncProgState();
}

class _AsyncProgState extends State<AsyncProg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Future')),
      body: FutureBuilder(
        /* future: Future.delayed(Duration(seconds: 5), () {
           return 55852.toString();
         }),*/
        future: _calculate(),
        builder: (context, snapshot) {
          if (snapshot.hasError) // completed with an error
            return Center(
                child: Text(
              "Loaded Failed",
              style: TextStyle(fontSize: 30),
            ));
          else if (snapshot.connectionState == ConnectionState.waiting ||
              !snapshot.hasData) // uncompleted
            return Center(child: CircularProgressIndicator()); // linear..
          else // completed with a data ==snapshot.connectionState == ConnectionState.done.
            return Center(
                child: Text(
              snapshot.data,
              style: TextStyle(fontSize: 30),
            ));
        },
      ),
    );
  }

  Future<String> _calculate() async {
    return Future.delayed(Duration(seconds: 4), () {
      return 'Loaded!';
    });
  }
}
