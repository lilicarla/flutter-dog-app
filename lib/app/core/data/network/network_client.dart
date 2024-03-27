import 'i_http_service.dart';

class HttpClient {
  final IHttpService _httpService;

  HttpClient(this._httpService);

  Future get(String url, {Map<String, dynamic>? query}) async {
    return await _httpService.get(url, query: query);
  }

  Future post(String url, {Map<String, dynamic>? body}) async {
    return await _httpService.post(url, body: body);
  }

  Future put(String url, {Map<String, dynamic>? body}) async {
    return await _httpService.put(url, body: body);
  }

  Future patch(String url, {Map<String, dynamic>? body}) async {
    return await _httpService.patch(url, body: body);
  }

  Future delete(String url, {Map<String, dynamic>? body}) async {
    return await _httpService.delete(url, body: body);
  }
}
