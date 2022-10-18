import 'package:alumni_app/views/user_form.dart';
import 'package:alumni_app/views/user_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  group('UserList', () {
    testWidgets('Não deve rolar formulário', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: UserForm(),
      ));
      await tester.drag(find.byType(Form), const Offset(0, -300));
      await tester.pump();
      // final primeiroUser = find.text('Carlos');
      // expect(primeiroUser, findsOneWidget);
    });

    testWidgets('Ecrã menor de tela', (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(320, 350);

      await tester.pumpWidget(
        (const MaterialApp(
          home: UserForm(),
        )),
      );
    });

    testWidgets('Deve exibir erro se a lista não for fornecida',
        (WidgetTester tester) async {
      await tester.pumpWidget((const MaterialApp(
        home: UserList(),
      )));
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}

// expect(find.byType(ThemeData), findsOneWidget);
// expect(find.(ListView), findsOneWidget);
// final test = find.text('qualquer coisa');
// expect(test, findsOneWidget);
// await tester.tap(test);
