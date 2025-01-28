import 'package:flutter/material.dart';
import 'package:hello_apps/landing.dart';

class myloadingApp extends StatefulWidget {
  const myloadingApp({Key? key}) : super(key: key);

  @override
  _myloadingAppState createState() => _myloadingAppState();
}

class _myloadingAppState extends State<myloadingApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => mylanding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: Image.asset(
                'web/icons/loading_page.png',
                width: 450,
                height: 450,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(),
          ] // Spinner loading
          ),
    );
  }
}
