import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_tv_frontend/main.dart';

void main() {
  testWidgets('Home screen renders header and sections', (WidgetTester tester) async {
    await tester.pumpWidget(const TvApp());
    // Verify key header elements are present
    expect(find.text('RECOMMENDATIONS'), findsOneWidget);
    // One of the featured items should be visible
    expect(find.textContaining('Batman v Superman'), findsWidgets);
  });

  testWidgets('Profile overlay toggles', (WidgetTester tester) async {
    await tester.pumpWidget(const TvApp());
    // Tap avatar circle
    final avatar = find.byType(CircleAvatar).first;
    await tester.tap(avatar);
    await tester.pumpAndSettle();
    expect(find.text('Sofie Turner'), findsOneWidget);
  });
}
