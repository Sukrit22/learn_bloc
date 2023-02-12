import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/app_route.dart';
import 'package:learn_bloc/bloc/counter_a_bloc/bloc/counter_a_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, AppRoute.another),
            icon: Icon(Icons.navigate_next),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'CounterA:',
            ),
            BlocBuilder<CounterABloc, CounterAState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterABloc>().add(CounterAEventAdd()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterABloc>().add(CounterAEventReset()),
            tooltip: 'Reset',
            child: const Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}
