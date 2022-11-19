import 'package:flutter/material.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:hello_world/routes/router_generator.dart';
import 'package:hello_world/ui/pages/counter_page.dart';
import 'package:hello_world/ui/pages/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_ ) => CounterProvider()  )
      ],
      child : const MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/staful',
      onGenerateRoute:  RouterGenerator.generateRoute,
    );
  }
}
