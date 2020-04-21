import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  AudioCache _audioCache = AudioCache(prefix: "audios/"); //prefix é o caminho
  // que esta os audios ( lembrando que o "assets" já está por padrão)


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([ //Pré-carregar os audios para não ter delay
      "1.mp3",
      "2.mp3",
      "3.mp3",
      "4.mp3",
      "5.mp3",
      "6.mp3",

    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //Quantidade de colunas

      ///Tamanho do espaçamento dos itens (maior, mais perto)
      //childAspectRatio: 1.2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,//Definir o
      // tamanho de acordo a largura e altura da tela (o valor da multiplicação pode mudar)

      //scrollDirection: Axis.horizontal, deixar o arraste na horizontal
      children: <Widget>[
        GestureDetector(
          onTap: (){
            _executar("1");
          },
          child: Image.asset("assets/imagens/1.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("2");
          },
          child: Image.asset("assets/imagens/2.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("3");
          },
          child: Image.asset("assets/imagens/3.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("4");
          },
          child: Image.asset("assets/imagens/4.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("5");
          },
          child: Image.asset("assets/imagens/5.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("6");
          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }


  _executar(String nomeAudio){
    _audioCache.play("$nomeAudio.mp3");
  }
}
