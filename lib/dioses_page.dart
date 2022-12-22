import 'package:dragon_ball/details_page.dart';
import 'package:flutter/material.dart';
import 'gerreros.dart';




class DiosesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        final Gerreros args = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return Details(
                gerrero: args
            );
          },
        );
      },
      title: 'Dioses de la destruccion',
      home: Dioses(),
    );
  }
}

class Dioses extends StatelessWidget {
  final List guerreros = [
    Gerreros('Iwen', 'Dios', 'universo1','assets/d1.jpg', 'assets/d1.jpg', 'Dios creado por Toyotaro y cuyo nombre hace referencia al vino.'),
    Gerreros('Jerez', 'Dios', 'universo2','assets/d2.jpg','assets/d2.jpg', ' Creación de Toyotaro y Toriyama. Como ya os comentamos, esta diosa haría referencia al vino de Jerez.'),
    Gerreros('Mosco', 'Dios', 'universo3','assets/d3.jpg','assets/d3.jpg', 'Toyotaro da vida a este dios, con un nombre procedente del moscow mule, un tipo de cocktail con vodka.'),
    Gerreros('Quitela,', 'Dios', 'universo4','assets/d4.jpg','assets/d4.jpg', ' Creación exclusiva de Akira Toriyama que hace referencia al tequila.'),
    Gerreros('Arak', 'Dios','universo5','assets/d5.jpg','assets/d5.jpg', ' Dios de la destrucción creado por Toyotaro, con un nombre asociado a una bebida de oriente medio.'),

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dioses de la destruccion'),
        ),
        body:
        ListView.separated(
          itemCount: guerreros.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          Details.routeName,
                          arguments: guerreros[index]
                      );
                    },
                    child:
                    guerreros[index].image1,
                  ),
                  guerreros[index].nombre
                ]
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(color: Colors.black);
          },
        ),
        backgroundColor: Colors.white);
  }
}