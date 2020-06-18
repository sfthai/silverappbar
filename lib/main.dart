import 'package:flutter/material.dart';

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
      body: ClipPath(
        clipper: MyClipper(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SilverAppBar'),
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
            ]))
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: double.infinity,
            //       height: 50,
            //       color: Colors.red,
            //     ),
            //     SizedBox(height: 5),
            //   ]),
            // )
          ],
        ),
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
