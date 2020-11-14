import 'package:Farlab/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBr extends StatefulWidget {
  PageController controlador;
  CustomBottomNavBr(this.controlador);
  @override
  Custom_BottomNavBrState createState() => Custom_BottomNavBrState(controlador);
}

class Custom_BottomNavBrState extends State<CustomBottomNavBr> {
  PageController controlador;
  Custom_BottomNavBrState(this.controlador);

  @override
  Widget build(BuildContext context) {
    Widget botomItemnavbar(
      String text,
      IconData icone,
      int posicao,
    ) {
      return InkWell(
        onTap: () {
          setState(() {
            controlador.jumpToPage(posicao);
          });
        },
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              padding: EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 6.0, bottom: 6.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icone,
                    size: 25.0,
                    color: controlador.page == posicao
                        ? Colors.black
                        : Colors.white70,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: controlador.page == posicao
                            ? Colors.black
                            : Colors.white70,
                        fontSize: 15.0),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return BottomAppBar(
      color: Constantes.primeiraCor,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          botomItemnavbar('Home', Icons.home, 0),
          botomItemnavbar('Buscar', Icons.search, 1),
          SizedBox(
            width: 48.0,
          ),
          botomItemnavbar('Pedidos', Icons.list, 2),
          botomItemnavbar('Perfil', Icons.face, 3),
        ],
      ),
    );
  }
}
