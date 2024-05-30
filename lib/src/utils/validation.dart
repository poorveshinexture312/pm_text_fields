import 'package:pm_text_fields/src/utils/extensions.dart';

/// Extension function implementations for field validation
class FormValidation {
  FormValidation._();

  /// for userName validation
  /// Implementation of [StringValidator.isNotNullOrEmpty] for required text field
  static String? requiredUserNameTextField(String? input) =>
      input.isNotNullOrEmpty() ? null : 'This field cannot be empty';

  /// Implementation of [StringValidator.isNotNullOrEmpty] for required text field
  static String? requiredEmailTextField(String? input) =>
      input.isNotNullOrEmpty() ? null : 'This field cannot be empty';

  /// Implementation of [StringValidator.isValidEmail] for email validation
  static String? emailTextField(String? input) =>
      input.isValidEmail() ? null : 'Invalid Email Address';

  /// for password validation

  /// Implementation of [StringValidator.isNotNullOrEmpty] for required text field
  static String? requiredPasswordTextField(String? input) =>
      input.isNotNullOrEmpty() ? null : 'This field cannot be empty';

  /// Implementation of [StringValidator.isValidPassword] for password validation
  static String? passwordTextField(String? input) => input.isValidPassword()
      ? null
      : 'Password must contain at least 1 uppercase letter, 1 lowercase letter, 1 special character, and be at least 8 characters long.';
}
