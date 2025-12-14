int fact(int f) {
    if (f == 1) {
        return 1;
    }

    if (f <= 0) {
        return 1;
    }

    return f * fact(f - 1);
}
