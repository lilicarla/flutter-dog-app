import '../../domain/domain.dart';
import '../datasources/datasources.dart';

class HomeRepositoryImpl implements HomeRepository {
  final DogApi dogApi;

  HomeRepositoryImpl(this.dogApi);

  @override
  Future<HomeState> getDogImage() async {
    try {
      final dog = await dogApi.getDog();
      return HomeSuccess(dog);
    } catch (e) {
      return HomeError(InvalidSearch());
    }
  }
}
