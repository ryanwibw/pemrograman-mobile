import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//void main()=> runApp(const MyApp());

/*void main(List<String> filters) {
    print('filters: $filters')
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(107, 42, 207, 53)),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Rian lorem'),
      home: MapMethodExample(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  //List<String> _fullname = <String>[];
  //List<String> _birthdate = <String>[];
  //List<String> _gender = <String>[];
  var _profile, arrHobby, listHobby;
  String _result = "";
  int _counter = 0;

  void _getProfile() {
    setState(() {
      String desc = "", a = "", b = "", c = "", age = "";

      /*_fullname = <String>[
        'Rian Wibowo Rafions',
        'Desty Fitriani Cahyani',
        'Balkis Rafiana'
      ];
      _birthdate = <String>['2002-04-25', '2001-12-21', '2004-06-21'];
      _gender = <String>['L', 'P', 'P'];
      
      if (_counter == _fullname.length) {
        _counter = 0;
      }*/
      _profile = [
        {
          'fullname': 'Rian Wibowo Rafions',
          'birthdate': '2002-04-25',
          'gender': 'L',
          'hobby': ['Futsal', 'Badminton', 'Coding', 'Gaming', 'Memancing']
        },
        {
          'fullname': 'Desty Fitriana Cahyani',
          'birthdate': '2001-12-21',
          'hobby': ['Memasak', 'Kuliner', 'Menjahit']
        },
        {
          'fullname': 'Balkia Rafiana Rafions Rafions',
          'birthdate': '2003-06-21',
          'gender': 'P',
          'hobby': ['Basket', 'Golf', 'Bernyanyi']
        }
      ];

      switch (_counter) {
        case 0:
          desc = '\nNo Urut 1\n';
          break;
        case 1:
          desc = '\nNo Urut 2\n';
          break;
        case 2:
          desc = '\nNo Urut 3\n';
          break;
        default:
          desc = '\nTidak Termasuk Pilihan\n';
      }

      if (_counter >= _profile.length) {
        _counter = 0; // Reset ke 0 jika mencapai akhir list
      }

      a = _profile[_counter]['fullname'];
      b = _profile[_counter]['birthdate'];
      //c = _profile[_counter]['gender'];
      if (_profile[_counter]['gender'] == 'L') {
        c = 'Laki-laki';
      } else if (_profile[_counter]['gender'] == 'P') {
        c = 'Perempuan';
      } else {
        c = 'Tidak Diketahui';
      }
      age = _getAge(b);
      arrHobby = _profile[_counter]['hobby'];

      listHobby = "";
      for (int i = 0; i < arrHobby.length; i++) {
        listHobby = '$listHobby${i + 1}. ${arrHobby[i]} \n';
      }
      _result =
          '$desc \n$a \nJenis Kelamin: $c\nTanggal Lahir: $b\nUsia: $age\nHobi:\n $listHobby';
      _counter++;

      _result;
    });
  }

  String _getAge(String birthdate) {
    var parseDate = DateTime.parse(birthdate);
    var today = DateTime.now();
    final yy = today.year - parseDate.year;
    final mm = today.month - parseDate.month;
    final dd = today.day - parseDate.day;

    var result = '$yy tahun $mm bulan $dd hari';
    return result;
  }

  void _resetProfile() {
    setState(() {
      _result = ""; // Reset tampilan ke awal
      _counter = 0;
    });
  }

  /*void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Profil Anggota',
            ),
            Text(
              _result,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: _getProfile,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 44.0,
            child: FloatingActionButton(
              onPressed: _resetProfile,
              tooltip: 'Reset',
              child: const Icon(Icons.refresh),
            ),
          ),
        ],
      ),
    );
  }
}*/

class MapMethodExample extends StatelessWidget {
  late final List<Map<String, String>> profile = [
    {
      'fullname': 'Rian Wibowo Rafions',
      'gender': 'Laki-laki',
      'age': _getAge('2002-04-25')
    },
    {
      'fullname': 'Desty Fitriana Cahyani',
      'gender': 'Perempuan',
      'age': _getAge('2001-12-21')
    },
    {
      'fullname': 'Balkis Rafiana Rafions',
      'gender': 'Perempuan',
      'age': _getAge('2004-06-21')
    }
  ];

  String _getAge(String birthdate) {
    var parseDate = DateTime.parse(birthdate);
    var today = DateTime.now();
    int yy = today.year - parseDate.year;
    int mm = today.month - parseDate.month;
    int dd = today.day - parseDate.day;

    if (dd < 0) {
      mm--;
      dd += DateTime(today.year, today.month, 0).day;
    }
    if (mm < 0) {
      yy--;
      mm += 12;
    }

    var result = '$yy tahun $mm bulan $dd hari';
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        //set the app bar title
        title: Text('Daftar Profile'),
      ),
      body: ListView(
        children: profile.map((profileInfo) {
          final String? fullname = profileInfo['fullname'];
          final String? gender = profileInfo['gender'];
          final String? age = profileInfo['age'];
          //var age = _getAge('birthdate');

          return ListTile(
            title: Text(fullname!),
            subtitle: Text('$gender \n$age'),
          );
        }).toList(),
      ),
    );
  }
}
