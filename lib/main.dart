import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("asset/1.jpg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            children: <Widget>[
               Padding(
                   padding: EdgeInsets.only(top: 30.0),
                ),
              FlutterLogo(
                size: 100.0,
              ),
              Padding(
                  padding: EdgeInsets.all(30.0),
              ),
              Form(
                  child: Container(
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                         TextField(
                           style: TextStyle(fontSize: 25.0,color: Colors.cyan),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                                hintText: "ENTER EMAIL",
                                hintStyle: TextStyle(fontSize: 25.0, color: Colors.green[100]),
                            ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                        ),
                        TextField(
                          style: TextStyle(fontSize: 25.0,color: Colors.cyan),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                              hintStyle: TextStyle(fontSize: 25.0, color: Colors.green[100]),
                                hintText: "ENTER PASSWORD",
                            ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                        ),
                        MaterialButton(
                          splashColor: Colors.lightBlue,
                         height: 50.0,
                         minWidth: 120.0,
                         shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          color: Colors.green[300],
                          textColor: Colors.black,
                          child: Text("LogIn",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.green[100]
                            
                           ),
                          ),
                          onPressed: ()=>{},
                        )
                      ]
                      )
                    ),
                  ),
        
            ]
          ),
        ]
    ),
   );
  }
}