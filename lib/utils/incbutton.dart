import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc.dart';

class incButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyBLoC bloc = BlocProvider.of<MyBLoC>(context);
    print("Criando incButton");
    return RaisedButton(
      child: Icon(Icons.add),
      onPressed: () => bloc.add(Event.increment),
    );
  }
}
