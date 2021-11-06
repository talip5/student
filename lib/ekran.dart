import 'package:flutter/material.dart';
import 'package:student/models/student5.dart';

class Ekran extends StatefulWidget {

  String isimx='';
  int nox=0;

  Student5 student5=Student5('',0);

  Ekran(this.student5){
    this.isimx=student5.firstNames;
    this.nox=student5.numbers;
  }

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text(
            'Ekran 35'
          ),
        ),
        body:Center(
          child: Text(widget.isimx),
        ),
    );
  }
}
