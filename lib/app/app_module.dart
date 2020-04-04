import 'package:desafiofluterando/app/modules/details/details_controller.dart';
import 'package:desafiofluterando/app/app_controller.dart';
import 'package:desafiofluterando/app/modules/details/details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:desafiofluterando/app/app_widget.dart';
import 'package:desafiofluterando/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/details',
            child: (_, args) => DetailsPage(),
            transition: TransitionType.scale),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
