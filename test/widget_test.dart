import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:vitory_app/main.dart';

void main() {
  testWidgets('Initial screen shows correctly test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: VitoryApp()));

    // Verify that our app shows the VITORY placeholder text
    expect(find.text('VITORY'), findsOneWidget);
    expect(find.text('App inicializada correctamente'), findsOneWidget);
  });
}
