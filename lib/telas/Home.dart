import 'package:appaprendaingles/telas/Bichos.dart';
import 'package:appaprendaingles/telas/Numeros.dart';
import 'package:appaprendaingles/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin { //Necessário para usar a tabBar

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Iniciar a controladora das tabs quando iniciar
    _tabController = TabController(
      length: 3,
      vsync: this // utiliza o SingleTickerProviderStateMixin da classe
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    //Finalizar a controladora das tabs quando não for mais usar
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Aprenda ingles"),

        bottom: TabBar(
          indicatorWeight: 4, //Tamanho do indicador da tela atual
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight:  FontWeight.bold
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais"),
          ],
        ),

      ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            Bichos(),
            Numeros(),
            Vogais(),
          ],
      ),
    );
  }
}
