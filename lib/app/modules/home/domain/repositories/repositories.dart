import '../states/states.dart';

abstract class HomeRepository {
  Future<HomeState> getDogImage();
}
