import 'package:fast_delivery/core/utils/exports.dart';

AppBar buildAppBarInMenu(GlobalKey<ScaffoldState> scaffoldKey,
    {bool? haveActionIcons, bool? haveTitle = true, String? appBarTitle}) {
  return AppBar(
    backgroundColor: AppColors.whiteShade,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    title: haveTitle == true
        ? Text(
            appBarTitle ?? '',
            style: TextStyles.sLgRegular,
          )
        : null,
    centerTitle: true,
    leading: CustomButtonInAppBar(
      icon: SvgPicture.asset(Assets.svgMenuIcon),
      onPressed: () => scaffoldKey.currentState!.openDrawer(),
    ),
    actions: haveActionIcons == true
        ? [
            CustomButtonInAppBar(
              icon: const Icon(Iconsax.search_normal_1),
              onPressed: () => scaffoldKey.currentState!.openDrawer(),
            ),
            CustomButtonInAppBar(
              icon: const Icon(Iconsax.notification),
              onPressed: () => scaffoldKey.currentState!.openDrawer(),
            ),
          ]
        : null,
  );
}
