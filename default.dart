import 'package:flutter/material.dart';

class Default extends StatefulWidget {
  @override
  _DefaultState createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  var _animatingWidget = CustomWidget().buttonCustom(
      texto: "Entrar", callback: () {}, cor: Constantes.segundaCor);
  int position;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomNavBr(pageController),
        floatingActionButton: SpecialFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: CustomAppBar(
          title: "Titulo",
        ),
        body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [Home(), Buscar(), Pedidos(), Perfil()],
        ));
  }
}
