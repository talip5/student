import 'package:flutter/material.dart';

class Form5 extends StatefulWidget {
  String isim='kkk';
  Form5(String isim){
  this.isim=isim;
  }

  @override
  _Form5State createState() => _Form5State();
}


class _Form5State extends State<Form5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baslik'),
      ),
      body: Center(
        child: Text('Form'),
      ),
    );
  }
}
