import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  bool passwordVisibal = true;
  var b  = Colors.black;
  var w  = Colors.white;
  var r  = Colors.red;
  var bl  = Colors.blue;
  var g  = Colors.green;
  var br = Colors.brown;
  var myController = TextEditingController();
  var str = "Text Field";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Field "),
        ),

        body: Container(
          height: double.infinity,
          color: b,
          child: SingleChildScrollView(
            //scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 20 ,),
                Container(
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                      //autofocus: true,
                      decoration: InputDecoration(
                        fillColor: b, filled: true, // both work together.
                        enabledBorder: OutlineInputBorder( // border always appears.
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: str,
                        labelStyle: TextStyle(fontSize: 20, color: r),
                        hintText: "Enter text",
                        hintStyle: TextStyle(fontSize: 20, color: w),
                      ),
                      //maxLines: 6,
                      //textAlign: TextAlign.center,
                      controller: myController,
                      style: TextStyle(color:w),
                      keyboardType: TextInputType.text,
                    )
                ),
                Container(
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: b, filled: true, // both work together.
                          enabledBorder: OutlineInputBorder( // border always appears.
                            borderSide: BorderSide(width: 2, color: g),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Name",
                          labelStyle: TextStyle(fontSize: 20, color: r),
                          hintText: "Enter name",
                          hintStyle: TextStyle(fontSize: 20,color: w),
                          prefixIcon: Icon(Icons.person_outline, color: bl,)
                      ),
                      style: TextStyle(color:w),
                      keyboardType: TextInputType.text,
                    )
                ),
                Container(
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: br, filled: true, // both work together.
                        enabledBorder: OutlineInputBorder( // border always appears.
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 15, color: g),
                        hintText: "Enter email",
                        hintStyle: TextStyle(fontSize: 20,color: w),
                        prefixIcon: Icon(Icons.alternate_email, color: bl,),
                      ),
                      style: TextStyle(color:w),
                      keyboardType: TextInputType.emailAddress,

                    )
                ),
                Container(
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: br, filled: true, // both work together.
                        enabledBorder: OutlineInputBorder( // border always appears.
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 15, color: g),
                        hintText: "Enter password",
                        hintStyle: TextStyle(fontSize: 20,color: w),
                        suffixIcon: IconButton(
                          icon: Icon(
                              passwordVisibal? Icons.visibility:Icons.visibility_off
                          ),
                          onPressed: (){
                            setState(() {
                              passwordVisibal = !passwordVisibal;

                            });
                          },
                        ),
                        ),
                      style: TextStyle(color:w),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisibal,
                      ),
                    ),
                Container(
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixText: "+213  ",
                        // suffixText: "#",
                        fillColor: b, filled: true, // both work together.
                        enabledBorder: OutlineInputBorder( // border always appears.
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(fontSize: 15, color: r),
                        hintText: "Enter phone number",
                        hintStyle: TextStyle(fontSize: 20, color: w),
                        icon: Icon(Icons.phone, color: bl,),
                      ),
                      style: TextStyle(color:w),
                      keyboardType: TextInputType.number,
                    )
                ),
                //SizedBox(height: 20 ,),
                Container(
                    margin: EdgeInsets.all(20.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        //backgroundColor: g,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      ),
                     child: Text("Get My Name", style: TextStyle(
                       fontSize: 30,
                       color: w
                     )),
                      onPressed: () => setState((){
                        str = myController.text;
                      // POP UP : // TODO
                        PopUp.kda(context, str);

                      }
                         ),
                    )
                ),
              ],
            ),
          )
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.nights_stay, color: b,),
        backgroundColor: w,
        onPressed: () => setState((){
            w == Colors.white? w =Colors.black: w =Colors.white;
            b = b==Colors.black? Colors.white: Colors.black;

        }),
      ),

    );
  }
}

// a class that will create pop up for us
class PopUp{
  static kda(BuildContext context, String str){

    // set up the button
    var okButton = TextButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Dialog title"),
      content: Text("Your name is  "+ str),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder:(_) =>  alert,
    );
  }
}