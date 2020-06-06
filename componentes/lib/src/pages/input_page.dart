
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _date = '';
  //edita el textfield fecha
  TextEditingController _inputDateController = new TextEditingController(); 

  List<String> _opciones = ['[Seleccionar opción]','Opción uno', 'Opción dos', 'Opción tres', 'Opción cuatro'];

  String _opcSeleccionada = 'Seleccionar opción';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _inputName(),
          Divider(),
          _inputEmail(),
          Divider(),
          _inputPass(),
          Divider(),
          _inputDate(context),
          Divider(),
          _inputDropdown(),
          _leerText()
        ],
      ),
    );
  }

  Widget _inputName() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Nombre',
        helperText: 'Ingresa solo tu nombre',
        suffixIcon: Icon(Icons.accessibility),
        prefixIcon: Icon(Icons.account_box),
      ),

      onChanged: (valor){
        setState(() {
        _nombre = valor;       
        });
      },
    );
  }

  Widget _inputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Ingresa tu Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Email',
        prefixIcon: Icon(Icons.mail_outline),
        suffixIcon: Icon(Icons.alternate_email),
      ),

      onChanged: (valor) =>setState((){_email=valor;})   
    );
  }

  Widget _inputPass() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Ingresa tu Contraseña',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Contraseña',
        prefixIcon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.lock_outline),
      ),

      onChanged: (valor) =>setState((){_email=valor;})   
    );
  }

  Widget _inputDate(BuildContext context) {
    return TextField(
      controller: _inputDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Fecha de nacimiento',
        prefixIcon: Icon(Icons.date_range),
        suffixIcon: Icon(Icons.today),
      ),

      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      }, 
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {

    List<DropdownMenuItem<String>> lista = new List();

    _opciones.forEach((opt) { 
      lista.add(DropdownMenuItem(child: Text(opt)));
    });
    return lista;
  }


  Widget _inputDropdown() {
    return DropdownButton(
      items: getOpcionesDropDown(),
      onChanged: (opc){
      setState(() {
        _opcSeleccionada = opc;
        print(opc);
      });
      }
    );
  }

  Widget _leerText() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcSeleccionada.toString()),
    );
  }

  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2000), 
      lastDate: new DateTime(2022),
      locale: Locale('es', 'ES')
    );
    
      if (picked != null){
        setState(() {
          _date = picked.toString();
          _inputDateController.text= _date;

        });
      }

  }

  

}
