import 'package:flutter/material.dart';
import 'package:student/ekran.dart';
import 'package:student/models/ortak.dart';
import 'package:student/models/student5.dart';
import 'package:student/form.dart';

void main() {
  runApp(MaterialApp(
    title: 'baslik',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  String isim='Demir3535';
  int index1=0;
  String message='Sinif gecme durumu';

  List<Student5> student5 = [Student5('Hakan',75),Student5('Ali',45),Student5('Kemal', 25)];
  Ortak ortak=Ortak('Sinif3335');

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void deneme(){
    widget.student5[0].firstNames='Kemal';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Baslik'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Student'),
              widget.ortak.text1,
              Expanded(
                child: ListView.builder(
                  itemCount: widget.student5.length,
                    itemBuilder: (BuildContext context,int index){
                    return ListTile(
                        title: Text(widget.student5[index].firstNames+'         '+widget.student5[index].numbers.toString()),
                      //subtitle: Text(dersDurumu(widget.student5[index].numbers)),
                      subtitle: Text(widget.student5[index].dersDurumu),
                      //trailing: not(widget.student5[index].numbers),
                      trailing: widget.student5[index].iconx,
                      onTap: (){
                          widget.index1=index;
                          print('index : '+index.toString());
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Ekran(widget.student5[index])))
                              .then((value) => print('yonlendirme yapildiktan sonraki islem'));
                      },
                    );
                    }),
              ),
              ElevatedButton(
                onPressed:(){
                  //deneme();
                  print(widget.student5[0].firstNames);
                  print('Student');
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=>Ekran()));
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Ekran(widget.student5[widget.index1])));
                },
                child: Text('Student'),
              ),
              ElevatedButton(
                onPressed:(){                  print(widget.ortak.sinif);
                },
                child: Text('Sinif'),
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Form5(widget.isim)));
                  print('Form');
                },
                child: Text('Form'),
              ),
            ],
          ),
        ),
    );
  }
  Widget not(int not1){
    if(not1>=50){
      return Icon(Icons.done);
    }else if(not1>=40){
      return Icon(Icons.album);
    }
    else{
      return Icon(Icons.clear);
    }
  }
  String dersDurumu(int notDegeri){
    if(notDegeri>=50){
     widget.message='Gecti';
     return widget.message;
    }else if(notDegeri>=40){
      widget.message='Butunlemeye kaldi';
      return widget.message;
    }
    else{
      widget.message='Kaldi';
      return widget.message;
    }
  }
}
