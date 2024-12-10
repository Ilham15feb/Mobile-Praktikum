import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

// Class utama untuk build aplikasi
class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('FTI Tutorial'),
            backgroundColor: const Color.fromARGB(255, 247, 250, 253),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.people),
                      Text("People"),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.music_video),
                      Text("Music"),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.camera_alt),
                      Text("Camera"),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.grade),
                      Text("Grade"),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.email),
                      Text("Email"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                  child: Icon(Icons.people, size: 100.0, color: Colors.blue)),
              Center(
                  child: Icon(Icons.music_video,
                      size: 100.0, color: Colors.amberAccent)),
              Center(
                  child:
                      Icon(Icons.camera_alt, size: 100.0, color: Colors.cyan)),
              Center(
                  child: Icon(Icons.grade,
                      size: 100.0, color: Colors.deepOrangeAccent)),
              Center(child: Icon(Icons.email, size: 100.0, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
