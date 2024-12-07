import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class mylogin extends StatefulWidget {
  const mylogin({Key? key}) : super(key: key);

  @override
  _myloginState createState() => _myloginState();
}

class _myloginState extends State<mylogin> {
  bool isChecked = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 5,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white10, Color(0xFFd7e4ea)])),
          ),
          Padding(
            padding: EdgeInsets.only(left: 90, top: 40),
            child: Text(
              'MꓥRI LOGIN',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 33,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: 30.0), // Margin kanan-kiri
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20.0, top: 5, bottom: 30), // Jarak luar
                    child: SvgPicture.asset(
                      'web/icons/login1.svg',
                      height: 280.0,
                      width: 280.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Email',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  TextField(
                    cursorHeight: 14,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xFF3B789A),
                          size: 20,
                        ),
                        fillColor: Color(0xFF3B789A).withOpacity(0.1),
                        filled: true,
                        hintText: "Ketikkan Email Anda",
                        hintStyle:
                            TextStyle(fontSize: 14.0, color: Colors.blueGrey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFF3B789A), width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 2.0)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Password',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFF3B789A),
                          size: 20,
                        ),
                        fillColor: Color(0xFF3B789A).withOpacity(0.1),
                        filled: true,
                        hintText: "Ketikkan Password Anda",
                        hintStyle:
                            TextStyle(fontSize: 14.0, color: Colors.blueGrey),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off_sharp
                                : Icons.visibility_sharp,
                            color: Color(0xFF3B789A),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 2.0))),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 8)),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked; // Toggle state
                          });
                          print("Check Circle pressed");
                        },
                        child: Icon(
                          isChecked
                              ? Icons.check_circle_outlined
                              : Icons.circle_outlined,
                          color: Color(0xFF3B789A),
                          size: 17.0,
                        ),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        'Ingat saya',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'maintenance');
                          },
                          child: Text(
                            'Lupa password ?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'maintenance');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(10.0),
                      backgroundColor: Color(0xFF3B789A),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Masuk',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kok ga punya akun? MARI',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, minimumSize: Size(0, 0)),
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
