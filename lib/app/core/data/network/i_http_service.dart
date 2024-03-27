abstract class IHttpService {
  Future<dynamic> get(String url, {Map<String, dynamic>? query});
  Future<dynamic> post(String url, {Map<String, dynamic>? body});
  Future<dynamic> put(String url, {Map<String, dynamic>? body});
  Future<dynamic> patch(String url, {Map<String, dynamic>? body});
  Future<dynamic> delete(String url, {Map<String, dynamic>? body});
}
