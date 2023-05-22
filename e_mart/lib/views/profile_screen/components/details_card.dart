import 'package:e_mart/consts/consts.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    children: [
      "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .height(50)
      .rounded
      .width(width)
      .padding(const EdgeInsets.all(4))
      .make();
}
