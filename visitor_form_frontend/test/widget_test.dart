import 'package:flutter_test/flutter_test.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:visitor_form_frontend/main.dart';

void main() {
  testWidgets('QR code screen renders with instruction text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Scan to open visitor form'), findsOneWidget);
    // Ensure a QR widget is present
    expect(find.byType(QrImageView), findsOneWidget);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('visitor_form_frontend'), findsOneWidget);
  });
}
