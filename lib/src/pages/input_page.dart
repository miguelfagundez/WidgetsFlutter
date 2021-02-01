import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';
  String _email = '';
  String _password = '';
  String _date = '';
  TextEditingController _controllerDate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
       children: <Widget>[
          _createWidget(),
         Divider(),
         _createEmail(),
         Divider(),
         _createPassword(),
         Divider(),
         _createDate(context),
         Divider(),
         _createPerson(),
        ],
      )
    );
  }

  Widget _createWidget() {
    final text = TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Insert name',
        counter: Text('Number of letters = ${_name.length}'),
        labelText: 'Name',
        suffixIcon: Icon(Icons.ac_unit),
        icon: Icon(Icons.satellite_rounded),
      ),
      onChanged: (valor){
        print(valor);
        _name = valor;
        setState(() {

        });
      },
      onTap: (){
        print('onTap');
      },
      onEditingComplete: (){
        print('onEditComplete');
      },
    );

    return text;
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('This is your name: $_name'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _createEmail() {
    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Insert email',
        counter: Text('Number of letters = ${_email.length}'),
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor){
        print(valor);
        _email = valor;
        setState(() {

        });
      },
      onTap: (){
        print('onTap');
      },
      onEditingComplete: (){
        print('onEditComplete');
      },
    );

    return email;
  }

  Widget _createPassword() {
    final password = TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        counter: Text('Number of letters = ${_password.length}'),
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor){
        print(valor);
        _password = valor;
        setState(() {

        });
      },
      onTap: (){
        print('onTap');
      },
      onEditingComplete: (){
        print('onEditComplete');
      },
    );

    return password;
  }

  Widget _createDate(BuildContext context) {
    final date = TextField(
      controller: _controllerDate,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'DOB',
        counter: Text('Number of letters = ${_password.length}'),
        labelText: 'DOB',
        suffixIcon: Icon(Icons.calendar_today_outlined),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      onEditingComplete: (){
        print('onEditComplete');
      },
    );

    return date;
  }

  void _selectDate(BuildContext context) async {
    DateTime time = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es'),
    );

    if (time != null){
      setState(() {
        _date = time.toString();
        _controllerDate.text = _date;
      });
    }
  }

}
