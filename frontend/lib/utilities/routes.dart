import 'package:alsafar/utilities/index.dart';

class Routes {
  Routes._();

  //static variables
  static const String homeView = '/homeView';

  static final routes = <String, WidgetBuilder>{
    homeView: (BuildContext context) => HomeView(),
  };
}
