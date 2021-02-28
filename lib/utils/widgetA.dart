import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc.dart';

//
// Widget para exibir contador
//
class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Criando WidgetA");
    return BlocConsumer(
      bloc: BlocProvider.of<MyBLoC>(context),
      listener: (context, state) {
      },
      buildWhen: (previous, current) {
        return previous.count != current.count;
      },
      builder: (context, state) {
        print("Recriando texto do WindgetA");
        return ListTile(
          title: Text('Contador ${state.count}'),
        );
      },
    );
  }
}