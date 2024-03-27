import 'package:flutter_modular/flutter_modular.dart';
import 'modules/home/home.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
