import 'package:alumni_app/main.dart';
import 'package:alumni_app/views/user_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

// //reuso do código !
// Widget makeTestWidget(Widget widget) => MaterialApp(
//       home: widget,
//     );

void main() {
  group('UserList', () {
    testWidgets('Não deve rolar com menos itens', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: UserList(),
      ));

      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pump();
      final primeiroUser = find.text('Carlos');
      expect(primeiroUser, findsOneWidget);
    });

    testWidgets('Teste tela lista de usuários', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: UserList(),
      ));
      expect(find.byType(IconButton), findsOneWidget);
      await tester.pump();

      // tester.binding.window.physicalSizeTestValue = const Size(320, 350);
    });
  });
}



      // expect(find.byType(ThemeData), findsOneWidget);
      // expect(find.(ListView), findsOneWidget);
      // final test = find.text('qualquer coisa');
      // expect(test, findsOneWidget);
      // await tester.tap(test);

    
