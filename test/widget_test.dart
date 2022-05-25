import 'package:flutter_test/flutter_test.dart';
import 'package:covid_19_ui_demo/main.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
  });
}
