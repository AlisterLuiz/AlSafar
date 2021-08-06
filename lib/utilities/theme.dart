import 'package:alsafar/utilities/index.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  accentColor: Colors.black,
  appBarTheme: AppBarTheme(elevation: 0.0),
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  fontFamily: 'Montserrat',
  primaryColor: Colors.white,
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  accentColor: Colors.white,
  appBarTheme: AppBarTheme(
    elevation: 0,
  ),
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  fontFamily: 'Montserrat',
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
);
