import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
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
            child: Text('MꓥRI DAFTAR',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                )),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.12),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: SvgPicture.asset(
                      'web/icons/ilus_regis.svg',
                      height: 160.0,
                      width: 160.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Pengguna',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xFF3B789A),
                          size: 20,
                        ),
                        fillColor: Color(0xFF3B789A).withOpacity(0.1),
                        filled: true,
                        hintText: "Masukkan Nama Anda",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.blueGrey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 2.0))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  TextField(
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
                            TextStyle(fontSize: 14, color: Colors.blueGrey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color(0xFF3B789A), width: 2.0))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
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
                            TextStyle(fontSize: 14, color: Colors.blueGrey),
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
                              color: Color(0xFF3B789A)),
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
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Konfirmasi Password',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(
                            0xFF3B789A,
                          ),
                          size: 20,
                        ),
                        fillColor: Color(0xFF3B789A).withOpacity(0.1),
                        filled: true,
                        hintText: "Ketik Ulang Password",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.blueGrey),
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
                              color: Color(0xFF3B789A)),
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
                          'Daftar',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sudah punya akun? MARI'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, minimumSize: Size(0, 0)),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
