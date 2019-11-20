import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class DispatchApiClient {
  static const baseUrl = "";
  final http.Client httpClient;

  DispatchApiClient({@required this.httpClient}) : assert(httpClient != null);
}
