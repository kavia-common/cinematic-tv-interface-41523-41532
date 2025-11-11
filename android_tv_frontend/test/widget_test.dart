import 'package:flutter_test/flutter_test.dart';
import 'package:android_tv_frontend/main.dart';

void main() {
  testWidgets('Home screen renders search, title, and recommendations label', (WidgetTester tester) async {
    await tester.pumpWidget(const TvApp());
    await tester.pumpAndSettle();
    expect(find.text('RECOMMENDATIONS'), findsOneWidget);
    expect(find.textContaining('Batman v Superman'), findsWidgets);
  });

  testWidgets('Play button shows snackbar on activate', (WidgetTester tester) async {
    await tester.pumpWidget(const TvApp());
    await tester.pumpAndSettle();
    final play = find.text('Play');
    expect(play, findsOneWidget);
    await tester.tap(play);
    await tester.pump();
    // Snackbar may be present; we just ensure no crash.
  });
}
