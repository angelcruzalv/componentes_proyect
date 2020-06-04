
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
        ],
        
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 20.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Tipo de tarjeta uno'),
            subtitle: Text('Este es un subtitulo de gran tamaño, ya que lo que se busca es llenar el espacio total del texto'),
            isThreeLine: true,
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Ok'),
              ),
              FlatButton(onPressed: (){}, child: Icon(Icons.cancel))
            ],
          )

        ],
      ),
    );
  }

  Widget _cardTipo2() {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
         color:Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10.0,
            spreadRadius: 10.0,
            color: Colors.black26,

          )
        ],
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        

        child: Container(
          // elevation: 20.0,
          child: Column(
            children: <Widget>[
              FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20180522150455/lake-baikal-summer.jpg'),
                fit: BoxFit.cover,
                height: 250,
              ),


              // Image(image: NetworkImage('https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20180522150455/lake-baikal-summer.jpg')),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Tipo de tarjeta dos')
              ),
            ],
          ),

        ),
      ),
    );
   
  }
}