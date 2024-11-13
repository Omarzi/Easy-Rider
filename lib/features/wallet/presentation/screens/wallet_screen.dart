import 'package:fast_delivery/core/utils/exports.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  static const String routeName = 'wallet';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBarInMenu(
        scaffoldKey,
        haveTitle: false,
        haveActionIcons: true,
      ),
      body: const WalletBody(),
    );
  }
}
