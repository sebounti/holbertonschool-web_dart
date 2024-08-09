class Password {
// PROPRIETE
  String password;

// CONSTRUCTEUR
  Password() : password = '';

  bool isValid() {
    // verify if the password length is between 8 and 16 characters
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    // verify if the password contains at least one uppercase letter
    if (password.contains(RegExp(r'[A-Z]')) == false) {
      return false;
    }
    // verify if the password contains at least one lowercase letter
    if (password.contains(RegExp(r'[a-z]')) == false) {
      return false;
    }
    // verify if the password contains at least one digit
    if (password.contains(RegExp(r'[0-9]')) == false) {
      return false;
    }
    ;

    return true;
  }

  String toString() {
    return 'Your Password is: $password';
  }
}
