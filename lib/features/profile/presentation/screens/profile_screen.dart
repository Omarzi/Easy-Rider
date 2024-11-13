import 'package:fast_delivery/core/utils/exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String routeName = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBarInMenu(
        scaffoldKey,
        haveTitle: true,
        appBarTitle: 'Edit Profile',
        haveActionIcons: false,
      ),
      body: const ProfileBody(),
    );
  }
}
