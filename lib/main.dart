import 'package:firebase_core/firebase_core.dart';
import 'package:hotel_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/cubit/register_states.dart';
import 'package:hotel_app/cubit/register_cubit.dart';
import 'package:hotel_app/screens/home_screen.dart';
import 'package:hotel_app/screens/login_screen.dart';
import 'package:hotel_app/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.web);
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit()..getRooms(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) => const MaterialApp(
          home: SignUp(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
