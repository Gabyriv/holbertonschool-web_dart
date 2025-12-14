void main(List<String> args) {
    int i = int.parse(args[0]);
    if (i > 0) {
        print('${i} is positive');
    }
    else if (i < 0) {
        print('${i} is negative');
    }
    else {
        print('${i} is zero');
    }
}
