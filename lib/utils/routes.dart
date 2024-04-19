import 'package:student_data/utils/headers.dart';

class Routes {
  static const String splash = '/';
  static const String home = 'home';
  static const String detail = 'detail';
  static const String adddata = 'adddata';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomePage(),
    detail: (context) => const DetailPage(),
    adddata: (context) => const AddDataPage(),
  };
}
