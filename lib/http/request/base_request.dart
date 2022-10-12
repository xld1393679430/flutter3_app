enum HttpMethod { GET, POST, DELETE }

abstract class BaseRequest {
  var pathParams;
  var useHttps = true;

  String authority() {
    return "api.devio.org";
  }

  HttpMethod httpMethod();

  String path();

  String url() {
    Uri url;

    var pathStr = path();
    if (pathParams != null) {
      if (path().endsWith("/")) {
        pathStr = "${path()}$pathParams";
      } else {
        pathStr = "${path()}/$pathParams";
      }
    }

    if (useHttps) {
      url = Uri.https(authority(), pathStr, params);
    } else {
      url = Uri.http(authority(), pathStr, params);
    }

    print("url: ${url.toString()}");
    return url.toString();
  }

  bool needLogin();

  Map<String, String> params = Map();

  BaseRequest add(String k, Object v) {
    params[k] = v.toString();
    return this;
  }

  Map<String, dynamic> header = Map();

  BaseRequest addHeader(String k, Object v) {
    params[k] = v.toString();
    return this;
  }
}
