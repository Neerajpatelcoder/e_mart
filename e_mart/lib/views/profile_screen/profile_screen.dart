import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/controllers/auth_controller.dart';
import 'package:e_mart/views/auth_screen/login_screen.dart';
import 'package:e_mart/views/profile_screen/components/details_card.dart';
import 'package:e_mart/widgets_common/bg_wideget.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            //edit profile button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit, color: whiteColor))
                  .onTap(() {}),
            ),
            //user deatils section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 130, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .makeCentered(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "customer@example.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: whiteColor,
                    )),
                    onPressed: () async {
                      await Get.put(AuthController()).signoutMethod(context);
                      Get.off(() => const LoginScreen());
                    },
                    child: logout.text.fontFamily(semibold).white.make(),
                  )
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.4),
                detailsCard(
                    count: "32",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.4),
                detailsCard(
                    count: "675",
                    title: "in your order",
                    width: context.screenWidth / 3.4)
              ],
            ),
            //buttons section

            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(color: lightGrey);
              },
              itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    profileButtonsIcon[index],
                    width: 22,
                  ),
                  title: profileButtonsList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                );
              },
            )
                .box
                .white
                .rounded
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .shadowSm
                .make()
                .box
                .color(redColor)
                .make()
          ],
        )),
      ),
    );
  }
}
