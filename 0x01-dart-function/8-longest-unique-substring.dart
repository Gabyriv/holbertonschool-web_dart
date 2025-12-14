String longestUniqueSubstring(String str) {
    String longest = '';
    String current = '';
    for (int i = 0; i < str.length; i++) {
        if (current.contains(str[i])) {
            current = '';
        }
        current += str[i];
        if (current.length > longest.length) {
            longest = current;
        }
    }
    return longest;
}
