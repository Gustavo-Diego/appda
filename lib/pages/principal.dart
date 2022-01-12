import 'package:appda/models/produto.dart';

import 'package:appda/pages/informacao.dart';
import 'package:appda/pages/timeDA.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  var produtos = new List<Produtos>();

  _PrincipalState(){
    produtos = [];

    produtos.add(Produtos(foto: "img/refri.png", descricao: "Refri(Coca, Fanta, Mineiro)", preco: "2,50"));
    produtos.add(Produtos(foto: "img/cerveja.png", descricao: "Cerveja(lata)", preco: "1 por 3, 4 por 10"));
    produtos.add(Produtos(foto: "img/agua.png", descricao: "Água", preco: "1,50"));
    produtos.add(Produtos(foto: "img/todinho.png", descricao: "Todinho", preco: "1,00"));
    produtos.add(Produtos(foto: "img/bolacha.png", descricao: "Bolacha(Passatempo)", preco: "2,00"));
    produtos.add(Produtos(foto: "img/salgadinho.png", descricao: "Salgadinho", preco: "1,50"));
    produtos.add(Produtos(foto: "img/geladinho.png", descricao: "Geladinho", preco: "0,50"));
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
            Text("Produtos do DACOMP", style: TextStyle(fontSize: 20, color: Colors.blue)),
            new Image.asset("img/pp.jpeg")
          ],
        ),
      ),
      body: Container(
        color: Colors.blue.withOpacity(0.3),
        child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: SizedBox(
                child:  Image.asset(produtos[index].foto, fit: BoxFit.cover),
                height: 120,
                width: 100,
              ),
              title: Text(
                produtos[index].descricao
              ),
              subtitle: Text(
                produtos[index].preco
              ),
            );
            },
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
                  builder: (context) => Informacao()
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
                  builder: (context) => Informacao()
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