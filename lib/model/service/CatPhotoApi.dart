import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class CatPhotoApi {
  String endpoint = "api.thecatapi.com";

  Future<Either<Exception, String>> getRandomCatPhoto() async {
    try {
      final queryParameters = {"api_key": "api key"};
      final uri = Uri.https(endpoint, "/v1/images/search", queryParameters);
      final response = await http.get(uri);

      return Right(response.body);
    } catch(e) {
      return (Left(e));
    }
  }
}
