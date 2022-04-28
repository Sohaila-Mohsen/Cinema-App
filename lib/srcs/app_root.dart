import 'package:cinema/blocs/imageIndex/cubit/imageindex_cubit.dart';
import 'package:cinema/views/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/cubit/reservation_cubit.dart';
import '../views/home_page.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImageindexCubit(),
        ),
        BlocProvider(
          create: (context) => ReservationCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: HomePage(),
      ),
    );
  }
}
