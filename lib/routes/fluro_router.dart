

import 'package:fluro/fluro.dart';
import 'package:hello_world/provider/counter_provider.dart';
import 'package:hello_world/ui/pages/counter_page.dart';
import 'package:hello_world/ui/pages/counter_provider.dart';
import 'package:hello_world/ui/views/Page404.dart';
import 'package:hello_world/ui/views/counter_provider_Views.dart';

class Flurorouter {

  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){

    router.define(
      '/', 
      handler: _counterHandler,
      transitionType:  TransitionType.cupertino
    );
    router.define(
       '/staful',
        handler: _counterHandler,
        transitionType:  TransitionType.cupertino
        );
    router.define( 
      '/provider',
      handler: _providerCounter,
      transitionType:  TransitionType.cupertino
      );

      router.notFoundHandler = _view404;
  }



  static final _counterHandler = Handler(
    handlerFunc: ( context , params  ) => CounterWiew()
    
  );


  static final _providerCounter  = Handler( 
    handlerFunc: ( context , params ) => CounterProviderViews()
  );

  static final _view404 = Handler(handlerFunc: (_,__) => Views404() );
}