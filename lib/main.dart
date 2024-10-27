import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Widget titleSection = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding : EdgeInsets.only(bottom: 10) ,
                  child: Text("Bonne journée pour tous les étudiants" , style: TextStyle(fontWeight: FontWeight.bold),)),
              Text("Digital School", style: TextStyle(color: Colors.grey[500]),),
            ],
          ),
        ),
        Icon(Icons.star , color: Colors.amber,),
        Text("41"),
      ],
    ),

  );

  Widget textSection = Container(
    padding: EdgeInsets.all(32),
      child: Text("EPI DIGITAL SCHOOL est un bâtiment moderne de six niveaux d’une superficie couverte de 5000 m2 équipé d’une infrastructure performante en matière de connectivité, de câblage et de haut débit (1 Gb/s)."
      ,softWrap: true,)
  );

  Column buildButtonColumn(Color color , IconData icon , String label){

        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon (icon, color: color),
            Container(
              margin: const EdgeInsets.only(top: 8),
                child: Text(label, style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400, color: color),))
          ],
        );
  }

  late Widget buttonSection = Row (
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButtonColumn(Colors.blue,Icons.call , 'CALL'),
      buildButtonColumn(Colors.blue,Icons.near_me , 'ROUTE'),
      buildButtonColumn(Colors.blue,Icons.share , 'SHARE'),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Image.asset("images/epi.png" , width: 200, height: 300,),
              titleSection,
            buttonSection,
            textSection,
          ],
        ),
    );
  }
}
