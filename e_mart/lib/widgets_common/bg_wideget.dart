import 'package:e_mart/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    // ignore: prefer_const_constructors
    decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        image: DecorationImage(
            // ignore: prefer_const_constructors
            image: AssetImage(imgBackground),
            fit: BoxFit.fill)),
    child: child,
  );
}
