import 'package:flutter/material.dart';
import 'package:ps13si/widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static List<Widget> _widgetOptions = <Widget>[
    // FutureBuilderPortalList(),
    // ProfileContent(),
  ];

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: SafeArea(
          child: Card(
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(15.0),
                ),
            // color: Colors.red,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/details",
                      // arguments: portals,
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Operating System Tuning and Cognation',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: [
          BottomNavigationBarItem(
            label: 'Cursos',
            icon: Icon(Icons.computer),
          ),
          BottomNavigationBarItem(
            label: 'Noticações',
            icon: Icon(Icons.notifications),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
