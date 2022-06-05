import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = "login_page";
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Flexible(
            child:Column(
              children: [
                SizedBox(height: 200,),
                _textFieldEmail()
              ],
            ) 
          ),
        ),
      ),
    );
  }
  Widget _textFieldEmail(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Nombre",
          hintText: "Eduardo Garcia" 
        ),
        onChanged: (value){},
      ),
    );
  }
  Widget _textFieldPassword(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin:  EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          labelText: "Password",
          hintText: "Password" ,
          border: InputBorder.none
        ),
        obscureText: true,
        onChanged: (value){},
      ),
    );
  }
  Widget _bottomLogin(){
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: Text('Iniciar Sesion',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
                ),
              ),
            ),
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(10) ),
          elevation: 10,
          color: Color(0xFF1D6507),
          onPressed: (){
            //Navigator.pushNamed(context, HomePage.id);
          });
      }
    );
  }
  Widget _textFieldName(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin:  EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Nombre",
          hintText: "Eduardo Garcia" 
        ),
        onChanged: (value){},
      ),
    );
  }
}