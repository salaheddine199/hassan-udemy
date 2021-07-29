import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizApp/mainQuizApp.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: ListView(
        children: [
          ourDrawHeader(),
          makeMyListTile(Icons.person, "Profile", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyQuizApp()),
            );
          }),
          makeMyListTile(Icons.notifications, "Notifications", () {}),
          makeMyListTile(Icons.settings, "Settings", () {}),
          makeMyListTile(Icons.logout, "Log Out", () {}),
          //ListTile(title: Text("Profile"),leading: Icon(Icons.person), onTap: () {},),
        ],
      )),
    );
  }
}

class ourDrawHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        child: Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(50),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Image.asset("images/flutterImageIcon.png",alignment: Alignment.topLeft, width: 75, height: 75),
              ),
            ),
            SizedBox(height:4,),
            Text( // we can wrap it with padding for more control
              "Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.deepOrange,
          Colors.orangeAccent,
        ],
      )),
    );
  }
}

class makeMyListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  makeMyListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.orangeAccent.shade100,
          onTap: onTap,
          child: Container(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  // I added it
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(text, style: TextStyle(fontSize: 16)),
                    ),
                  ]),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

