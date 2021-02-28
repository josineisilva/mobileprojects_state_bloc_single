import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc.dart';

class decButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyBLoC bloc = BlocProvider.of<MyBLoC>(context);
    print("Criando decButton");
    return RaisedButton(
      child: Icon(Icons.remove),
      onPressed: () => bloc.add(Event.decrement),
    );
  }
}