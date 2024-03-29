import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes App'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    
    // menuProvider.cargarData().then((opciones){
    // });
    return FutureBuilder(
      future: menuProvider.cargarData(),
       initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
    
        
        return ListView(
          children: _listaItems(snapshot.data, context)
        );
      },
    );

  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget>  opciones = [];

    data.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon'],),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}
