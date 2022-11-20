import 'package:flutter/material.dart';
import 'package:hello_world/locator.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:hello_world/routes/router_generator.dart';
import 'package:hello_world/services/navigation_service.dart';
import 'package:hello_world/ui/layout/main_layout_page.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
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
      navigatorKey:  locator<NavigationService>().navigatorKey,
      onGenerateRoute:  RouterGenerator.generateRoute,
      builder: (_, child ){
        return MainLatoutPage(child:  child ?? CircularProgressIndicator() );
      },
    );
  }
}
