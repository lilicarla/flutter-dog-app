import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import '../../core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'home.dart';
import 'presenter/stores/stores.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addInstance(http.Client());
    i.addSingleton<IHttpService>(HttpService.new);
    i.addSingleton<HttpClient>(HttpClient.new);
    i.addSingleton<DogApi>(DogApiImpl.new); //
    i.addSingleton<HomeRepository>(HomeRepositoryImpl.new);
    i.addLazySingleton<HomeStore>(HomeStore.new);
  }

  @override
  void routes(r) {
    // set home module initial route
    r.child('/', child: (context) => const HomePage());
  }
}

// Flutter Modular documentation:
// injector.add: Build an instance on demand (Factory). Register a factory instance. A new instance will be generated whenever requested.
// injector.addSingleton: Build an instance only once when the module starts.
// injector.addLazySingleton: Build an instance only once when prompted.
// injector.addInstance: Adds an existing instance.
