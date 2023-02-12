import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/app_route.dart';
import 'package:learn_bloc/bloc/app_bloc_observer.dart';
import 'package:learn_bloc/bloc/counter_a_bloc/bloc/counter_a_bloc.dart';
import 'package:learn_bloc/bloc/counter_b_bloc/bloc/counter_b_bloc.dart';
import 'package:learn_bloc/pages/home_page.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterABloc = BlocProvider<CounterABloc>(
        create: (context) =>
            CounterABloc()); // ! create BlocProvider<blocNameBloc>

    final counterBBloc = BlocProvider<CounterBBloc>(
      create: (context) => CounterBBloc(),
    );
    return MultiBlocProvider(
      //! wrap the most top state (use) with multi bloc provider
      providers: [counterABloc, counterBBloc], //! add list of providers
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppRoute().getAll,
        title: 'Flutter Demo',
        theme: ThemeData(
          //colorSchemeSeed: Colors.purple,
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
