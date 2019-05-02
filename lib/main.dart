import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('Oeschinen Lake Campground', style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Text('Kandersteg, Switzerland', style: TextStyle(
                color: Colors.grey[500],
              )),
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red,),
        Text('41'),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  final heroSection = Container(
    child: Image.asset(
        'images/lake.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
    ),
  );


  Widget _buildButtonWidget ( IconData icon, String label){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.lightBlue),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label, style: TextStyle(color: Colors.lightBlue),),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonWidget(Icons.call, 'CALL'),
          _buildButtonWidget(Icons.near_me, 'ROUTE'),
          _buildButtonWidget(Icons.share, 'SHARE'),

        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Flutter Layout')),
      body: Container(
        child: ListView(
          children: <Widget>[
            heroSection,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }


}

