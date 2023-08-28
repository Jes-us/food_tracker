class Success {
  int code;
  Object response;

  Success({required this.code, required this.response});
}

class Failure {
  int errorCode;
  String? errorResponse;
  Failure({required this.errorCode, required this.errorResponse});
}
