import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = "home_page";
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('INICIO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.white
          ),),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                //Navigator.pushNamed(context, SettingsPage.id);
              },
            ),
          ],
        ),
        drawer:Drawer(
          backgroundColor: Color.fromARGB(255, 190, 114, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF1D6507)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text('UBER TRUCK',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person,
                color: Colors.white,),
                title: Text('Perfil',
                style: TextStyle(
                  color: Colors.white
                ),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.person,
                color: Colors.white,),
                title: Text('Perfil',
                style: TextStyle(
                  color: Colors.white
                ),),
                onTap: (){},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,width: 10,),
                Card(
                  color: Color.fromARGB(255, 227, 220, 220),
                  child: SizedBox(
                    height: 200,
                    width: 400,
                    child: Column(
                      children: [
                        Center(
                          child: Text("En UberTruck la mejor desicion al enviar tu pedido"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}