import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Student5 {

  String firstNames='';
  int numbers=0;
  String message='';

  Student5(String firstNames,int numbers ) {
    this.firstNames=firstNames;
    this.numbers=numbers;
  }

  String get dersDurumu{
    if(numbers>=50){
      message='Gecti35';
      return message;
    }else if(numbers>=40){
      message='Butunlemeye kaldi35';
      return message;
    }
    else{
      message='Kaldi35';
      return message;
    }
  }

  Widget get iconx{
    return Icon(Icons.add);
  }
}