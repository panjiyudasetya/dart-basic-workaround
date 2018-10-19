void main() {
  var values = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  print(values.where((int value) => value % 2 == 0).toList());
  print(values.reduce((int current, int next) => current + next));
  print(values.map((int value) => value*2));
  values.forEach((int value) {
    print('Base value is $value, next modified value must be ' + (value * 1.5).toString());
  });
}
