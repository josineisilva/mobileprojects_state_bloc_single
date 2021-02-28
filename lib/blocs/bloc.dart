import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';
import '../models/state.dart';

enum Event { increment, decrement, color }

class MyBLoC extends Bloc<Event, BLoCState> {
  @override
  BLoCState get initialState => BLoCState(0,UniqueColorGenerator.getColor());

  @override
  Stream<BLoCState> mapEventToState(Event event) async* {
    switch (event) {
      case Event.decrement:
        yield BLoCState(state.count-1,state.color);
        break;
      case Event.increment:
        yield BLoCState(state.count+1,state.color);
        break;
      case Event.color:
        yield BLoCState(state.count,UniqueColorGenerator.getColor());
        break;
    }
  }
}

//
// Classe para gerar uma cor aleatoria
//
class UniqueColorGenerator {
  static Random random = Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}