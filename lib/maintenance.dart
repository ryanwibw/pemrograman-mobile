import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class maintenance extends StatefulWidget {
  const maintenance({Key? key}) : super(key: key);

  @override
  _maintenanceState createState() => _maintenanceState();
}

class _maintenanceState extends State<maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white10, Color(0xFFd7e4ea)])),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset('web/icons/maintenance.svg',
                        height: 200, width: 200),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kami sedang mengulik',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Maaf, halaman ini sedang dalam perbaikan dan akan segera selesai secepatnya',
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.all(10.0),
                            backgroundColor: Color(0xFF3B789A),
                            minimumSize: Size(150, 45),
                            maximumSize: Size(150, 45)),
                        child: Text(
                          'Kembali',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ]),
          )),
    );
  }
}
