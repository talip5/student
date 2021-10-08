import 'package:flutter/material.dart';
import 'package:student/models/student5.dart';

class Form5 extends StatefulWidget {

  Student5 student5=Student5('',0);

  String firstNamef='kkk';
  int numberf=0;

  Form5(this.student5){
  this.firstNamef=firstNamef;
  this.numberf=numberf;
  }

  @override
  _Form5State createState() => _Form5State();
}


class _Form5State extends State<Form5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Form'),
          ),
          ElevatedButton(
            onPressed:(){
              print('Form islem');
              print(widget.student5.firstNames);
            },
            child: Text('Islem'),
          ),
        ],
      ),
    );
  }
}
