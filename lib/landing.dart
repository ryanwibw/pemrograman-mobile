import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mylanding extends StatefulWidget {
  const mylanding({Key? key}) : super(key: key);

  @override
  _mylandingState createState() => _mylandingState();
}

class _mylandingState extends State<mylanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 5,
      ),
      body: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.white10, Color(0xFF89aec2)])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.25),
                      child: Text('MꓥRI',
                          style: TextStyle(
                              fontSize: 80,
                              color: Color(0xFF3B789A),
                              letterSpacing: 5))),
                  SizedBox(
                    height: 180,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xFF3B789A),
                      minimumSize: Size(150, 45),
                      maximumSize: Size(150, 45),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xFF3B789A),
                      minimumSize: Size(150, 45),
                      maximumSize: Size(150, 45),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Daftar',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
