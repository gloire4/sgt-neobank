import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  String _title ='';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(index) {
        case 0: { _title = 'Bienvenue à la SGT Neo Bank'; }
        break;
        case 1: { _title = 'Effectuer des opérations'; }
        break;
        case 2: { _title = 'Mes transactions'; }
        break;
        case 3: { _title = 'Mes paramètres'; }
        break;
      }
    });
  }

  static const List<Widget> _pages = <Widget>[
    Text(
      'Accueil',
      style: TextStyle(fontSize: 45),
    ),
    Text(
      'Effectuer Opérations',
      style: TextStyle(fontSize: 45),
    ),
    Text(
      'Mes transactions',
      style: TextStyle(fontSize: 45),
    ),
    Text(
      'Mes paramètres',
      style: TextStyle(fontSize: 45),
    ),

  ];


  @override
  initState(){
    _title = 'SGT Neo Bank';
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('$_title', style: TextStyle(fontSize: 10),),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16), // marge interieure
            child: Icon(Icons.logout),
          ),
        ],
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //si type n'est pas Fixed, plus de 3 icones ne pourront pas etre affichés
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 0,
        iconSize: 30,


        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.loop),
            label: 'Operations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historiques',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mon compte',
          ),
        ],
      ),

    );
  }
}
