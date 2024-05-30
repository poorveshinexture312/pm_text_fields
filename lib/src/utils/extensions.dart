/// String extension functions for Text field validations
extension StringValidator on String? {

  bool isNotNullOrEmpty() =>
      (this == null || this?.isEmpty == true) ? false : true;

  bool isNullOrEmpty() =>
      (this == null || this?.isEmpty == true) ? true : false;

  bool isValidEmail() {
    return isNullOrEmpty()
        ? false
        : RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this!);
  }

  bool isValidPassword() {
    return isNullOrEmpty()
        ? false
        : RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$')
        .hasMatch(this!);
  }

  bool isValidMobile() {
    return isNullOrEmpty()
        ? false
        : RegExp(
        r'^\+?[1-9]\d{1,14}$') // E.164 format, allowing optional '+' at the start
        .hasMatch(this!);
  }
}