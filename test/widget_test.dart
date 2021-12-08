import 'package:codemagicpractice/my_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('This widget has a title and a descriptin', (tester) async {
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
