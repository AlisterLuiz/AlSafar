import 'package:alsafar/utilities/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeModel>(
          create: (BuildContext context) => ThemeModel(),
        ),
        ChangeNotifierProvider<CurrentIndexProvider>(
          create: (BuildContext context) => CurrentIndexProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Safar',
      theme: Provider.of<ThemeModel>(context).currentTheme,
      initialRoute: Routes.homeView,
      routes: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
