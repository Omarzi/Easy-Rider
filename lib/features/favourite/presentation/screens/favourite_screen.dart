import 'package:fast_delivery/core/utils/exports.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  static const String routeName = 'favourite-screen';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBarInMenu(scaffoldKey, appBarTitle: 'Favourite', haveTitle: true),
      drawer: const Drawer(),
      body: const FavouriteBody(),
    );
  }
}