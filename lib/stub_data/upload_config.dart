import '../types/upload_config.dart';

import '../backend_client/get_upload_config.dart' as api;

api.Response getResponse() {
  final uploadConfig = UploadConfig(
    filePath: '',
    authKey: '',
  );
  return api.Response(uploadConfig);
}
