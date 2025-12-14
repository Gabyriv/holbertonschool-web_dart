import '9-palindrome.dart';

String longestPalindrome(String s) {
    if (s.length < 3) {
        return 'none';
    }
    String longest = '';
    for (int i = 0; i <= s.length - 3; i++) {
        for (int j = i + 3; j <= s.length; j++) {
            String substr = s.substring(i, j);
            if (isPalindrome(substr) && substr.length > longest.length) {
                longest = substr;
            }
        }
    }
    return longest.isEmpty ? 'none' : longest;
}

