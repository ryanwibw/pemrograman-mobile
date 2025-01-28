import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class myHomePage extends StatefulWidget {
  myHomePage({Key? key}) : super(key: key);

  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  String? userName;

  @override
  void initState() {
    super.initState();
    getUserName();
  }

  Future<void> getUserName() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userName =
            user.displayName; // Assuming the name is stored in displayName
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 170, 189, 200),
        title: Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text(
            'DASHBOARD',
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff0b181e),
                fontWeight: FontWeight.bold,
                letterSpacing: 3),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Color(0xFF0b181e),
              size: 30,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.white60,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Informasi',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ini merupakan modifikasi mobile app untuk UAS mata kuliah Pemrograman Mobile. MꓥRI adalah singkatan dari anggota kelompok kami, yaitu: Mahfud, Amar, Raihan, Rian, Ibul',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\nKELOMPOK 2 :'
                          '\nNama: Rian Wibowo, NIM: 3420210016'
                          '\nNama: Mahfud Muhyiddin, NIM: 3420210025'
                          '\nNama: Raihan Fajarahmatan, NIM: 3420210010'
                          '\nNama: Mochamad Shohibul Burhan, NIM: 3420210011'
                          '\nNama: Muhammad Amar, NIM: 3420210001 ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Menutup modal
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white10,
                  Color(0xFF89aec2),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.001),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      'MꓥRI',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3B789A),
                        letterSpacing: 5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome, ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        userName ?? 'User',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                        ), // Display user name or 'User' if null
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'web/icons/photo-rian.jpeg',
                        height: 120.0,
                        width: 120.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nama : Rian Wibowo \nNIM  : 3420210016 \nFrontend & Backend Division',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'web/icons/photo-mahfud.jpeg',
                        height: 120.0,
                        width: 120.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nama: Mahfud Muhyiddin \nNIM: 3420210025 \nBackend Division',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'web/icons/photo-raihan.jpeg',
                        height: 120.0,
                        width: 120.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nama: Raihan Fajarahmatan \nNIM: 3420210010 \nFrontend Division',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'web/icons/photo-burhan.jpeg',
                        height: 120.0,
                        width: 120.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nama: Mochamad Shohibul Burhan \nNIM: 3420210011 \nFrontend Division',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'web/icons/photo-amar.jpeg',
                        height: 120.0,
                        width: 120.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nama: Muhammad Amar \nNIM: 3420210001 \nBackend Division',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut(); // Sign out

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
                          'Keluar',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
