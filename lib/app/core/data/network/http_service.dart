import './i_http_service.dart';
import 'package:http/http.dart' as http;

class HttpService extends IHttpService {
  final http.Client client;

  HttpService(this.client);

  @override
  Future delete(String url, {Map<String, dynamic>? body}) {
    return client.delete(Uri.parse(url));
  }

  @override
  Future get(String url, {Map<String, dynamic>? query}) {
    return client.get(Uri.parse(url));
  }

  @override
  Future patch(String url, {Map<String, dynamic>? body}) {
    return client.patch(Uri.parse(url));
  }

  @override
  Future post(String url, {Map<String, dynamic>? body}) {
    return client.post(Uri.parse(url));
  }

  @override
  Future put(String url, {Map<String, dynamic>? body}) {
    return client.put(Uri.parse(url));
  }
}
