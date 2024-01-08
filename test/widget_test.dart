// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/app/app_preferences.dart';
import 'package:uik/app/consts.dart';
import 'package:uik/data/localStorge/localstorge.dart';

class MockAppPreferences extends Mock implements AppPreferences {}
void main() {

group(AppPreferences, () { 
  group('getheader', () {
    test('return header', () async{
      final appPreferences = MockAppPreferences();
      when(appPreferences.getUserToken()).thenAnswer((_) async => 'myUserToken');
      when(appPreferences.getUserTokenType()).thenAnswer((_) async => 'Bearer');
       Constants.appPreferences = appPreferences;
       final header = await Constants.header;
      
      // Verify the expected values in the header map
      expect(header, 'application/json');
      //expect(header['authorization'], 'Bearer myUserToken');
    });
   });
});
  group(SharedPreferencesUtil, () { 
    group('getname', () { 
      test('return no if no value', () async{
        SharedPreferences.setMockInitialValues({});
        final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
        final SharedPreferencesUtil sharedPreferencesUtil=SharedPreferencesUtil(sharedPreferences: sharedPreferences);
        expect('', sharedPreferencesUtil.getName());
      });
    });
    test('return the correct name', ()async{
      const nameValue='dania';
      SharedPreferences.setMockInitialValues({SharedPreferencesUtil.namekey:nameValue});
        final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
       final SharedPreferencesUtil sharedPreferencesUtil=SharedPreferencesUtil(sharedPreferences: sharedPreferences);
       expect(nameValue, sharedPreferencesUtil.getName());
    });
  });
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget( MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
