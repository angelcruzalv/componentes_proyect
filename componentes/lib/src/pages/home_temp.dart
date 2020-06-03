import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
 
 
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  // const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
              appBar: AppBar(
                title: Text('Componentes Tem Bar'),
              ),
              body: ListView(
                children: _crearItemsCorto()
              ),
            );
  }

  List<Widget> _crearItems () {

    List<Widget> lista = new List<Widget>();

    for (String opc in opciones) {

      final tempWidget = ListTile(
        title: Text(opc),
      );

      lista..add(tempWidget)
           ..add(Divider());
      
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item ),
            subtitle: Text('Subtítulo'),
            leading: Icon(Icons.move_to_inbox),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}