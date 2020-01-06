import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(context),
          _loginForm(),
        ],
      )
    );
  }

 Widget _background(BuildContext context) {
    
    final size = MediaQuery.of(context).size; //tomar el valor total de la pantalla para hacer el fondo dinámico
    final back = Container(
      height: size.height *0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(63, 63, 156, 1.0), Color.fromRGBO(90, 70, 178, 1.0)
            ]
        ),
      ),
    );
    
    final circle = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(250, 250, 250, 0.2),
      ),
    );

    return Stack(
      children: <Widget>[
        back,
       // Positioned(top: 90, left: 50, child: circle),
        Positioned(top: -70, left: 250, child: circle),
        Positioned(top: 120, right: -50, child: circle),
        Positioned(top: 220, left: 100, child: circle),
        Positioned(top: 40, left: 30, child: circle),

        Container(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
              Icon(Icons.person_pin_circle, color: Colors.white, size: 100,),
              SizedBox(height: 10, width: double.infinity,),
              Text('Rodrigo Scott', style: TextStyle(color: Colors.white, fontSize: 20,),)
            ],
          ),
        ),
      ],
    );

 }

 Widget _loginForm() {
    return SingleChildScrollView(

    );
 }
}
