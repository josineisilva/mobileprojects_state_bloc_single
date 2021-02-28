import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc.dart';

//
// Widget para exibir a cor
//
class WidgetD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Criando WidgetD");
    return BlocConsumer(
      bloc: BlocProvider.of<MyBLoC>(context),
      listener: (context, state) {
      },
      buildWhen: (previous, current) {
        return previous.color != current.color;
      },
      builder: (context, state) {
        print("Recriando ListTile do WindgetD");
        return Container(
          color: state.color,
          child: ListTile(
            title: Text('Cor '),
          ),
        );
      },
    );
  }
}