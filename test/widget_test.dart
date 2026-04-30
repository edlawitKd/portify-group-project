// Portify App Widget Tests
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portify_app/main.dart';

void main() {
  testWidgets('App starts successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const PortifyApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
