import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('FTI Uniska Tutorial'),
          ),
          body: const Center(
            child: Text(
              "Selamat Datang Di FTI UNISKA BANJARMASIN",
              style: TextStyle(color: Colors.black, fontSize: 40.0),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
               ),
             ],
             onTap: (int indexOfItem) {}),
          floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: const Icon(Icons.add),
            onPressed: () {
              //action on button press
            }),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  ),
                  child: Text(
                    'FTI Tutorial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Sosisal'),
                  leading: Icon(Icons.people),
                ),
                ListTile(
                  title: Text('Ibox'),
                  leading: Icon(Icons.mail),
                ),
                ListTile(
                  title: Text('Dashboard'),
                  leading: Icon(Icons.account_balance),
                ),
              ],
            ),
          ),      
      ),
    );
  }
}