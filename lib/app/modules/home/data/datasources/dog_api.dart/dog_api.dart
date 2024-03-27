import '../../../../../core/data/network/network.dart';
import '../../models/models.dart';
import '../../../../../core/constants.dart';

abstract class DogApi {
  Future<DogModel> getDog();
}

class DogApiImpl implements DogApi {
  final HttpClient client;

  DogApiImpl(this.client);

  @override
  Future<DogModel> getDog() async {
    var response = await client.get("${urlBase}breeds/image/random");
    if (response.statusCode == 200) {
      // response:
      // body: "{"message":"https:\/\/images.dog.ceo\/breeds\/terrier-sealyham\/n02095889_2861.jpg","status":"success"}"
      var json = response.body;
      var dog = DogModel.fromJson(json);
      return dog;
    } else {
      throw Exception();
    }
  }
}
