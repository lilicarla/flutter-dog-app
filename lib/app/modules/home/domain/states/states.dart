import "../entities/entities.dart";
import "../errors/errors.dart";

abstract class HomeState {}

class HomeInitial implements HomeState {}

class HomeLoading implements HomeState {}

class HomeError implements HomeState {
  final Failure error;
  const HomeError(this.error);
}

class HomeSuccess implements HomeState {
  final Dog dog;
  const HomeSuccess(this.dog);
}
