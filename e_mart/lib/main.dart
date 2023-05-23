import 'package:e_mart/views/home_screen/home.dart';
import 'package:e_mart/views/splash_screen.dart/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'consts/consts.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // we are using getx so we have to change this material app into getmaterial app

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: appname,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              //to set appbar icon color
              iconTheme: IconThemeData(
                color: darkFontGrey,
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent),
          fontFamily: regular,
        ),
        home: const Home());
  }
}
