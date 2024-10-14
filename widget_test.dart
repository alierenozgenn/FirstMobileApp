import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_1/main.dart';

void main() {
  testWidgets('Renk Değiştirme Uygulaması Testi', (WidgetTester tester) async {
    // Uygulamayı oluştur ve bir çerçeve tetikle.
    await tester.pumpWidget(const MyApp()); // 'const' eklendi

    // Başlangıçta arka plan sarı olmalı.
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Scaffold && widget.backgroundColor == Colors.yellow),
        findsOneWidget);

    // Rengi değiştiren butona bas.
    await tester.tap(find.text('Rengi Değiştir'));
    await tester.pump(); // Çerçeveyi yeniden tetikle

    // Arka plan rengi mavi olmalı.
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Scaffold && widget.backgroundColor == Colors.blue),
        findsOneWidget);
  });
}
