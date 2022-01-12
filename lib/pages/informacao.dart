import 'package:appda/models/informacao.dart';

import 'package:appda/pages/principal.dart';
import 'package:appda/pages/timeDA.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Informacao extends StatefulWidget {
  @override
  _InformacaoState createState() => _InformacaoState();
}

class _InformacaoState extends State<Informacao> {

  var informacao = new List<Info>();

  _InformacaoState(){
    informacao = [];

    informacao.add(Info(imagem: "img/pg1.png"));
    informacao.add(Info(imagem: "img/pg2.png"));
    informacao.add(Info(imagem: "img/pg3.png"));
    informacao.add(Info(imagem: "img/pg4.png"));
    informacao.add(Info(imagem: "img/pg5.png"));
    informacao.add(Info(imagem: "img/pg6.png"));
    informacao.add(Info(imagem: "img/pg7.png"));
    informacao.add(Info(imagem: "img/pg8.png"));

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
            Text("Informações - UFU", style: TextStyle(fontSize: 20, color: Colors.blue)),
            new Image.asset("img/pp.jpeg")
          ],
        ),
      ),

      body: Center(
        child: Container(
          color: Colors.blue.withOpacity(0.3),
          child: ListView.builder(
            itemCount: informacao.length,
            itemBuilder: (context, index){
              return ListTile(
                title: new Image.asset(informacao[index].imagem),
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