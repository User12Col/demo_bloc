import 'package:demo_bloc/bloc/counter_bloc/counter_bloc.dart';
import 'package:demo_bloc/bloc/counter_bloc/counter_event.dart';
import 'package:demo_bloc/bloc/counter_bloc/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  @override
  Widget build(BuildContext context) {
    return CounterProvider(child: Scaffold(
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count $state'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(IncreaseEvent());
                      },
                      child: Text('+')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(DecreaseEvent());
                      },
                      child: Text('-')),
                ],
              )
            ],
          );
        },
      ),
    ));
  }
}
