import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i0.wp.com/espacionegocios.com.ar/wp-content/uploads/2020/02/elon-musk.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('EM'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://estaticos.elperiodico.com/resources/jpg/3/2/elon-musk-suma-mas-problemas-1538084324023.jpg'),
          fadeInDuration: Duration(milliseconds: 2000),
        ),
      ),
    );
  }
}