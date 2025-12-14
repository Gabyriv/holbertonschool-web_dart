class Password {
    String? password;

    bool isValid() {
        final p = password;
        if (p == null) {
            return false;
        }

        if (p.length < 8 || p.length > 16) {
            return false;
        }
        if (!p.contains(RegExp(r'[A-Z]')) ||
            !p.contains(RegExp(r'[a-z]')) ||
            !p.contains(RegExp(r'[0-9]'))) {
            return false;
        }
        return true;
    }

    String toString() {
        return 'Your Password is: ${this.password}';
    }
}
