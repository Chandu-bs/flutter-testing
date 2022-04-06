import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_3/main.dart' as app;

void main() {
 
   IntegrationTestWidgetsFlutterBinding.ensureInitialized();

testWidgets(
  "Tap the increment button for 12 times",
  (WidgetTester tester) async {
      //setup
      app.main();
      await tester.pumpAndSettle();
      final Finder button = find.byIcon(Icons.add);
      //do
      for(var i=0; i<12; i++) {
        await tester.tap(button);
        await Future.delayed(const Duration(seconds: 1));
      }
     await tester.pumpAndSettle();
      //expect

      expect(find.text('12'), findsOneWidget);

  },
);
}