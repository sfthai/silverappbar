import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 3,
            pinned: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF2508FF),
                          Color(0xFFFF1000)
                        ]),
                      ),
                    ),
                  ),
                  Text(
                    " All Songs ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.green),
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF2508FF),
                          Color(0xFFFF1000)
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              background: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF3383CD),
                        Color(0xFF11249F),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: (MediaQuery.of(context).size.height / 2) -
                                ((MediaQuery.of(context).size.height / 2) /
                                    1.5),
                          ),
                          Text(
                            "Devotional Songs - Tamil",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.red,
            ),
          ]))
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 3, size.height / 3, size.width, size.height / 5);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
