import 'package:codemagicpractice/counter.dart';
import 'package:test/test.dart';

void main() {
  group('int', () {
    test('increment should increase the value of the count', () {
      var counter = Counter();
      var result = counter.increment();
      expect(result, 1);
    });

    test('decrement should decrease the value of count', () {
      var counter = Counter();
      var result = counter.decrement();
      expect(result, 0);
    });
    test('parse throws FormatException when String is the input', () {
      var number = 'X';
      expect(() => int.parse(number), throwsFormatException);
    });
  });

  group('String', () {
    test('string array elemets', () {
      expect('foo,bar,baz',
          allOf([contains('foo'), isNot(startsWith('bar')), endsWith('baz')]));
    });
  });
}
