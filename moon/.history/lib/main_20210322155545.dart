import 'package:flutter/material.dart';
import 'package:mytest/views/pages/splash.dart';
import 'package:provider/provider.dart';
import 'core/providers/homeProvider.dart';
import 'core/providers/loginProvider.dart';
import 'core/providers/signupProvider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    ));
