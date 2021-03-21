import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Image.asset(
                'lake.jpg',
                width: 600,            
                height: 240,
                fit: BoxFit.cover
              ),
              Container(
                height : 15
              ),
              TitleSection(),
              ButtonSection(),
              TextSection(),
            ],
          )
        )
      ) 
    );
  }
}

class TitleSection extends StatefulWidget {
  const TitleSection({Key key}) : super(key: key);

  @override
  _TitleSectionState createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  double _count = 4.1;



  @override
  Widget build(BuildContext context) {
    padding: const EdgeInsets.all(32)
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Oeschinen Lake Campgorund', style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Kandersteg, Switzerland',style: TextStyle(color: Colors.black54),),
          ],
        ),
        Row(
          children: [
            IconButton(
          icon: const Icon(Icons.star, color: Colors.red),
          onPressed: () {
            setState(() {
              _count += 0.5;
            });
          },
        ),
        Text('$_count')
            
          ],
        ),
      ],
    )
    ;
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
                height : 15
            ),
            IconButton(
            
              icon: const Icon(Icons.phone, color: Colors.blue),
              ),
            Text('Call'),
            Container(
                height : 15
              )
          ],
        ),
        Column(
          children: [
          Container(
                height : 15
            ),
            IconButton(
              icon: const Icon(Icons.near_me, color: Colors.blue),
              ),
            Text('Route'),
            Container(
                height : 15
              )
          ],
        ),
        Column(
          children: [
            Container(
                height : 15
            ),
            IconButton(
              icon: const Icon(Icons.share, color: Colors.blue),
              ),
            Text('Share'),
            Container(
                height : 15
              )
          ],
        )
      ],
    );
  }
}
class TextSection extends StatelessWidget {
  const TextSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( 
            child: Text(
             'Lake Oeschinen lies at the foot of the Bluemlisalp in' 
             'the Bernese Alps. Situated 1,578 meters above sea' 
             'level, it is one of the larger Alpine Lakes. A gondola '
             'ride from Kandersteg, followed by a half-hour walk '
             'through pastures and pine forest, leads you to the '
             'lake, which warms to 20 degrees Celsius in the' 
             'summer. Activities enjoyed here include rowing, and'
             'riding the summer toboggan run',
             softWrap: true,
              style: TextStyle(
                fontSize: 20.0,
                height: 1.5 //You can set your custom height here
              )
            ),
              constraints: BoxConstraints(
              maxHeight: 300.0,
              maxWidth: 400.0,
              ),
        ),
    );
  }
}
