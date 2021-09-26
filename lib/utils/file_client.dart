import 'dart:typed_data';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> sendRequest(
  Uri url,
  Uint8List fileBytes,
  String fieldJson,
) async {
  final multipartRequest = http.MultipartRequest('POST', url);

  // File
  final file = http.MultipartFile.fromBytes(
    'file',
    fileBytes,
    filename: 'default',
  );
  multipartRequest.files.add(file);
  // JSON
  multipartRequest.fields['json'] = fieldJson;

  final streamedResponse = await multipartRequest.send();
  final stringResponse = await streamedResponse.stream.bytesToString();
  final decodedResponse = json.decode(stringResponse);
  return decodedResponse;
}
