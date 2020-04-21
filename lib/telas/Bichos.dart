import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {


  AudioCache _audioCache = AudioCache(prefix: "audios/"); //prefix é o caminho
  // que esta os audios ( lembrando que o "assets" já está por padrão)

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([ //Pré-carregar os audios para não ter delay
      "cao.mp3",
      "gato.mp3",
      "leao.mp3",
      "macaco.mp3",
      "ovelha.mp3",
      "vaca.mp3",

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
            _executar("cao");
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("gato");
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("leao");
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("macaco");
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("ovelha");
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),

        GestureDetector(
          onTap: (){
            _executar("vaca");
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }

  _executar(String nomeAudio){
    _audioCache.play("$nomeAudio.mp3");
  }
}
