import 'package:flutter/material.dart';
import 'package:dragon_ball/dioses_page.dart';
import 'package:dragon_ball/angeles_page.dart';



class MyHomePage extends StatelessWidget {

  List<Image> images = [
    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJk1Mrxc0c4jp7zQDD_loYVFdxXVmNd7U6zxondjqgjuj-aoTc"),

    Image.asset('assets/d1.jpg'),
    Image.asset('assets/d2.jpg'),
    Image.asset('assets/d3.jpg'),
    Image.asset('assets/d4.jpeg'),
    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRK5IFZlcaKq3jKgb51Lnb2FPawMws0ITz2ZsBgxX_CTfMsQZWl"),
    Image.asset('assets/a1.jpg'),
    Image.asset('assets/a2.jpg'),
    Image.asset('assets/a3.png'),
    Image.asset('assets/a4.png'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dragon ball'),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DiosesPage()),
                      );
                    },
                    child: Image.asset('assets/dioses.jpg', width: 200)
                ),
                Container(
                  width: 150,
                  child: Text(
                    "Dioses de la destruccion",
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AngelesPage()),
                      );
                    },
                    child:
                    Image.asset('assets/angeles.jpg', width: 200)
                ),
                Container(
                  width: 150,
                  child: Text(
                    "Angeles de los universos",
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            )
          ],
        ),

      drawer: menu(),


    );
  }
}

class menu extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Image.asset('assets/dra.jpg'),

          ),
          ListTile(
            title: Text('Inicio'),

            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),



          ListTile(
            title: Text('Dioses de la destruccion'),

            leading: Image.asset('assets/dioses.jpg'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiosesPage()),
              );
            },
          ),

          ListTile(

            title: Text('Angeles de los universos'),
            leading: Image.asset('assets/angeles.jpg'),

            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AngelesPage()),
              );
            },

          ),

        ],
      ),
    );
  }
}
