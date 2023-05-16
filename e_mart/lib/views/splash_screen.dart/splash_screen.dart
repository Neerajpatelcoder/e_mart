import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';
import '../auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// creating a method to change screen
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(children: [
          const Align(alignment: Alignment.topLeft),
          Image.asset(icSplashBg, width: 300),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.fontFamily(semibold).make(),
          30.heightBox,
          //our splash screen UI is completed...
        ]),
      ),
    );
  }
}
