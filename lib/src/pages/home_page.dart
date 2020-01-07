import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:formvalidation/src/blocs/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Datos'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:  MainAxisAlignment.center,
        children: <Widget>[
          Text('Email: ${bloc.email}'),
          Divider(),
          Text('Password: ${bloc.password}'),
        ],
      ),
    );
  }
}