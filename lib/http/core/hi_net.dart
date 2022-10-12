import 'package:flutter3_app/http/request/base_request.dart';

class HiNet {
  HiNet._();

  static HiNet? _instance;

  static HiNet? getInstance() {
    _instance ??= HiNet._();
    return _instance;
  }

  Future fire(BaseRequest request) async {
    var response = await send(request);
    var result = response['data'];
    return result;
  }

  Future<dynamic> send<T>(BaseRequest request) async {
    print("url: ${request.url}");
    print("method: ${request.httpMethod()}");
    request.addHeader("token", "test");
    print("header: ${request.header}");

    return Future.value({
      "statusCode": 200,
      "data": {"code": 0, "message": "success"}
    });
  }
}
