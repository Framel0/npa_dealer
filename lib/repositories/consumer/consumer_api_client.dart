import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ConsumerApiClient {
  static const baseUrl = "";
  final http.Client httpClient;

  ConsumerApiClient({@required this.httpClient}) : assert(httpClient != null);
}
