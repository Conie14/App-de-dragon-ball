import 'package:flutter/material.dart';
import 'details_page.dart';
import 'gerreros.dart';

class AngelesPage extends StatelessWidget {
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
      title: 'Angeles de los universos',

      home: Angel(),

    );
  }
}

class Angel extends StatelessWidget {

  final List gerreros = [
    Gerreros('Awamo ', 'Angel', 'Universo1','assets/a1.jpg', 'assets/a1.jpg', 'Su alta inteligencia le permite sentir todo lo que esté a su alrededor.'),
    Gerreros('Sour', 'Angel', 'Universo2','assets/a2.jpg', 'assets/a2.jpg', 'Es complicado con sujetos rudos, prefiere ver todo por el lado intelectual de las cosas.'),
    Gerreros('Camparli', 'Angel', 'Universo3','assets/a3.jpg', 'assets/a3.jpg', 'Es uno de los ángeles menos expresivos. Casi nunca saca sus ideas a relucir, ya que habla sólo cuando traduce a Mosco.'),
    Gerreros('Cognic', 'Angel', 'Universo4','assets/a4.jpg', 'assets/a4.jpg', 'Es talentoso y perspicaz.'),
    Gerreros('Cucatail', 'Angel', 'Universo5','assets/a5.png','assets/a5.png', 'Es un ángel del género femenino que vigila a sus excelentes Kaio-shin y Dios de la Destrucción, y a la vez, aprende de su conocimiento')
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Angeles'),

        ),

        body:
        ListView.separated(

          itemCount: gerreros.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          Details.routeName,
                          argument

                    },
                    child:
                    gerreros[index].image1,
                  ),
                  gerreros[index].nombre
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