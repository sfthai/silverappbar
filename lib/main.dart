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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('FilledStacks'),
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
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.red,
              ),
              SizedBox(height: 5),
            ]),
          )
        ],
      ),
    );
  }
}
