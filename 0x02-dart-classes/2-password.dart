class Password {
// PROPRIETE
  String password;

// CONSTRUCTEUR
  Password() : password = '';

  String isValid() {
    // verify if the password length is between 8 and 16 characters
    if (password.length < 8 || password.length > 16) {
      return 'Password length must be between 8 and 16 characters';
    }
    // verify if the password contains at least one uppercase letter
    if (password.contains(RegExp(r'[A-Z]')) == false) {
      return 'Password must contain at least one uppercase letter';
    }
    // verify if the password contains at least one lowercase letter
    if (password.contains(RegExp(r'[a-z]')) == false) {
      return 'Password must contain at least one lowercase letter';
    }
    // verify if the password contains at least one digit
    if (password.contains(RegExp(r'[0-9]')) == false) {
      return 'Password must contain at least one digit';
    }
    ;

    return 'Password is valid';
  }

  String toString() {
    return 'Your Password is: $password';
  }
}
