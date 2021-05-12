import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;

  Resultado(this.valor);
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    print(widget.valor);
    var caminhoImagem = "imagens/moeda_cara.png";
  if(widget.valor == "cara"){
    caminhoImagem = "imagens/moeda_cara.png";
  }else{
    caminhoImagem = "imagens/moeda_coroa.png";
  }

    return   Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("imagens/moeda_cara.png"),
            GestureDetector(
              onTap:() {
                Navigator.pop(context);
              },
              child: Image.asset(caminhoImagem),
            )
          ],
        ),
      ),
    );
  }
}
