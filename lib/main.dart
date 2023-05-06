import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //TextStyle white_style = TextStyle(color: Colors.white);
    return Scaffold(
      backgroundColor: Colors.blue,
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.pink.shade400,
              Colors.blue.shade800,
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              //Image.asset("assets/images/bg.jpg", fit: BoxFit.contain),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/mat.jpeg",
                ),
                radius: 90,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mateus Meneses",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Designer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: 10, left: 60, right: 60, top: 20),
                child: Divider(
                  height: 2,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 50,
                  right: 50,
                ),
                child: MyCard(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 50,
                  right: 50,
                ),
                child: MyGit(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: FaIcon(FontAwesomeIcons.whatsapp),
        title: Text(
          "86. 99821-3255",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class MyGit extends StatelessWidget {
  const MyGit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: FaIcon(FontAwesomeIcons.github),
        title: Text(
          "/menesesdev",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
