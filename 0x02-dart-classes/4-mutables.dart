class Password {
  // PROPRIETE
  String _password;

  // CONSTRUCTEUR
  Password({required String password}) : _password = password;

  // Getter for the password value
  String get password => _password;

  // Setter for the password value
  set password(String newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    // verify if the password length is between 8 and 16 characters
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    // verify if the password contains at least one uppercase letter
    if (_password.contains(RegExp(r'[A-Z]')) == false) {
      return false;
    }
    // verify if the password contains at least one lowercase letter
    if (_password.contains(RegExp(r'[a-z]')) == false) {
      return false;
    }
    // verify if the password contains at least one digit
    if (_password.contains(RegExp(r'[0-9]')) == false) {
      return false;
    }
    ;
    return true;
  }

  String toString() {
    return 'Your Password is: $_password';
  }
}
