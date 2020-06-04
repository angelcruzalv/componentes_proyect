import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed:()=> _mostrarAlert(context),
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,

      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text('Alert Dialog'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Este es el contenido de la Alerta'),
            FlutterLogo(size: 100,),
          ],
      
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Aceptar'),
            onPressed: ()=> Navigator.of(context).pop(), 
          ),
          FlatButton(
            onPressed: ()=>Navigator.of(context).pop(),
            child: Icon(Icons.cancel))
        ],
      ),
    );
  }
}