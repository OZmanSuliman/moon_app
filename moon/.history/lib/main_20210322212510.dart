import 'package:flutter/material.dart';
import 'package:mytest/views/pages/intro.dart';
import 'package:provider/provider.dart';
import 'core/providers/homeProvider.dart';
import 'core/providers/loginProvider.dart';
import 'core/providers/signupProvider.dart';
import 'core/providers/introProvider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => IntroProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GooeyEdgeDemo(
          title: "my Title",
        ),
      ),
    ));
