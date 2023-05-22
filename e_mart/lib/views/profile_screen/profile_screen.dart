import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/widgets_common/bg_wideget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              //edit profile button
              const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit, color: whiteColor))
                  .onTap(() {}),
              //user deatils section
              Row(
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
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make(),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
