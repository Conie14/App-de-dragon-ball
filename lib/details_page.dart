import 'package:dragon_ball/details_page.dart';
import 'package:dragon_ball/gerreros.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// A Widget that accepts the necessary arguments via the constructor.
class Details extends StatelessWidget {
  static const routeName = 'passArguments';

 // final String title;
  //final String message;
  final  gerrero;

  const Details({
    Key key,
    //@required this.title,
    //@required this.message,
    @required this.gerrero
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: gerrero.nombre,
        ),
        body: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    gerrero.image1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        gerrero.nombre,
                        gerrero.universo,
                        gerrero.tipo
                      ],
                    )
                  ],
                ),
                Divider(),
                gerrero.descripcion,
                gerrero.image2
              ],
            )
        ),
        backgroundColor: Colors.white
    );
  }
}