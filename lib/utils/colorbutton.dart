import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc.dart';

class colorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyBLoC bloc = BlocProvider.of<MyBLoC>(context);
    print("Criando colorButton");
    return RaisedButton(
      child: Text('Cor'),
      onPressed: () => bloc.add(Event.color),
    );
  }
}