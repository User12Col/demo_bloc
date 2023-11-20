import 'package:demo_bloc/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc():super(0){
    on<IncreaseEvent>((event, emit) => emit(state + 1));
    on<DecreaseEvent>((event, emit) => emit(state - 1));
  }

}