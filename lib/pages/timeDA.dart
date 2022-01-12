import 'package:appda/models/timeDA.dart';

import 'package:appda/pages/principal.dart';
import 'package:appda/pages/informacao.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeDA extends StatefulWidget {
  @override
  _TimeDAState createState() => _TimeDAState();
}

class _TimeDAState extends State<TimeDA> {

  var time = new List<Time>();

  _TimeDAState(){
    time = [];

    time.add(Time(nome: "Cirilo(Murilo)", foto: "img/murilo.jpeg", cargo: "Presidente"));
    time.add(Time(nome: "Max", foto: "img/max.jpeg", cargo: "Vice-Presidente"));
    time.add(Time(nome: "Julia", foto: "img/julia.jpeg", cargo: "Diretoria Financeira"));
    time.add(Time(nome: "Gustavo", foto: "img/gustavo.jpeg", cargo: "Vice-diretoria financeira"));
    time.add(Time(nome: "Nathaly", foto: "img/nat.jpeg", cargo: "Diretoria Política"));
    time.add(Time(nome: "Pedro(McLovin)", foto: "img/tannus.jpeg", cargo: "Vice-diretoria política"));
    time.add(Time(nome: "Cairo(Cheddar)", foto: "img/cairo.jpeg", cargo: "Diretoria de Eventos"));
    time.add(Time(nome: "Thiago", foto: "img/thiago.jpeg", cargo: "Vice Direroria de Eventos"));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text("Time do DA", style: TextStyle(fontSize: 20, color: Colors.blue)),
            new Image.asset("img/pp.jpeg")
          ],
        ),
      ),

      body: Center(
        child: Container(
          color: Colors.blue.withOpacity(0.3),
          child: ListView.builder(  
            itemCount: time.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: new Image.asset(time[index].foto),
                title: Text(
                  time[index].nome
                ),
                subtitle: Text(
                  time[index].cargo
                ),
              );
            },
          )
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.pushReplacement(context,
                CupertinoPageRoute(
                  builder: (context) => Principal()
                )
              ),
              child: Icon(Icons.home),
            ),
            InkWell(
              onTap: () => Navigator.pushReplacement(context,
                CupertinoPageRoute(
                  builder: (context) => Informacao()
                )
              ),
              child: Icon(Icons.info),
            ),
            InkWell(
              onTap: () => Navigator.pushReplacement(context,
                CupertinoPageRoute(
                  builder: (context) => TimeDA()
                )
              ),
              child: Icon(Icons.supervised_user_circle),
            ),
          ],
        ),
      ),

      
    );
  }
}