import 'package:alumni_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('teste tela principal', (WidgetTester tester) async {
    await tester.pumpWidget(const AlumniApp());
    expect(find.text('Alumni'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);

    final test = find.text('qualquer coisa');
    expect(test, findsOneWidget);
    await tester.tap(test);
  });
}
