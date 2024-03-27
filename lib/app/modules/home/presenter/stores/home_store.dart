import 'package:mobx/mobx.dart';
import '../../domain/domain.dart';

part 'home_store.g.dart';

// ignore: library_private_types_in_public_api
class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final HomeRepository _repository;

  _HomeStoreBase(this._repository) {
    getRandomDogImage();
  }

  Future<HomeState> _getDog() async {
    try {
      return await _repository.getDogImage();
    } catch (e) {
      return HomeError(InvalidSearch());
    }
  }

  @observable
  HomeState state = HomeInitial();

  @action
  setState(HomeState value) => state = value;

  @action
  Future<void> getRandomDogImage() async {
    setState(HomeLoading());
    final result = await _getDog();
    setState(result);
  }
}
