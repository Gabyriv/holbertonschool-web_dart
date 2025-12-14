class Password {
    String _password;

    Password({String password = ''}) : _password = password;

    bool isValid() {
        if (_password.length < 8 || _password.length > 16) {
            return false;
        }
        if (!_password.contains(RegExp(r'[A-Z]')) ||
            !_password.contains(RegExp(r'[a-z]')) ||
            !_password.contains(RegExp(r'[0-9]'))) {
            return false;
        }
        return true;
    }

    String toString() {
        return 'Your Password is: ${this._password}';
    }
}
