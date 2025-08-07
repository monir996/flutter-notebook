import 'dart:convert';
import 'package:http/http.dart';

class NetworkResponse {
  final bool isSuccess;
  final int statusCode;
  final Map<String, dynamic>? body;
  final String? errorMessage;

  NetworkResponse({
    required this.isSuccess,
    required this.statusCode,
    this.body,
    this.errorMessage,
  });
}

class NetworkCaller {
  static const String _defaultErrorMessage = 'Something went wrong.';

  static Future<NetworkResponse> getRequest({required String url}) async {

    Uri uri = Uri.parse(url); // Convert the URL to URI

    Response response = await get(uri); // Get Request & wait for Response

    try {
      // If Request - Success or Failed
      if (response.statusCode == 200) {
        // Success
        final decodedJson = jsonDecode(response.body);

        return NetworkResponse(
          isSuccess: true,
          statusCode: response.statusCode,
          body: decodedJson,
        );

      } else {
        // Failed
        final decodedJson = jsonDecode(response.body);

        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
          errorMessage: decodedJson['data'] ?? _defaultErrorMessage,
        );

      }
    } catch (e) {
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        errorMessage: _defaultErrorMessage,
      );
    }
  }

  static Future<NetworkResponse> postRequest({required String url, Map<String, String>? body}) async {

    Uri uri = Uri.parse(url); // Convert the URL to URI

    Response response = await post(
        uri,
        headers: {'content-type' : 'application/json'},
        body: jsonEncode(body)
    ); // Post Request & wait for Response

    try {
      // If Request - Success or Failed
      if (response.statusCode == 200) {
        // Success
        final decodedJson = jsonDecode(response.body);

        return NetworkResponse(
          isSuccess: true,
          statusCode: response.statusCode,
          body: decodedJson,
        );

      } else {
        // Failed
        final decodedJson = jsonDecode(response.body);

        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
          errorMessage: decodedJson['data'] ?? _defaultErrorMessage,
        );

      }
    } catch (e) {
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        errorMessage: _defaultErrorMessage,
      );
    }
  }
}
