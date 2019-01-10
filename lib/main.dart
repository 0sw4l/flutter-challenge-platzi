import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFFDC3D63),
        primaryColorDark: const Color(0xFFB93259)
      ),
      home: Challenge(),
    );
  }
}

class Challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Share'),
        leading: new Icon(Icons.arrow_back),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.jpeg'),
              fit: BoxFit.cover
          )
        ),
        child: Center(
          child: new Container(
            width: queryData.size.width,
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0
            ),
            decoration: new BoxDecoration(
              color: Colors.black45
            ),
            child: new Text(
                "Im Free !!! @0sw4l",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              textAlign: TextAlign.center,
            ),
          )
        ),
      ),
    );
  }
}
