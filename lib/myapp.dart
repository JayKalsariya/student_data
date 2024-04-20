import 'package:student_data/utils/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFA5DD9B),
        colorSchemeSeed: const Color(0xFFC5EBAA),
      ),
      routes: Routes.routes,
    );
  }
}
