import 'package:flutter/material.dart';

class Gerreros {
  String _nombre;
  String _universo;
  String _tipo;
  String _image1;
  String _image2;
  String _descripcion;

  Gerreros(this._nombre, this._tipo, this._universo,
      this._image1, this._image2, this._descripcion);

  //GETTERS
  Text get nombre => Text(this._nombre,
      style: TextStyle(fontSize: 33,
          fontFamily: 'greatVibes'));

  Text get tipo => Text(this._tipo,
      style: TextStyle(fontSize: 26));

  Text get universo => Text(this._universo,
      style: TextStyle(fontSize: 26));

  Image get image1 => Image.asset(this._image1,
      width: 170);

  Image get image2 => Image.asset(this._image2,
      width: 215);

  Container get descripcion => Container(
      width: 350,
      child: Text(this._descripcion,
          style: TextStyle(fontSize: 16,
              fontStyle: FontStyle.italic),
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          maxLines: 10));
}