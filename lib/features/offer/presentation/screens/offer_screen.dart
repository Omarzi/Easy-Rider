import 'package:fast_delivery/core/utils/exports.dart';
import 'package:fast_delivery/features/offer/presentation/widgets/offer_body.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  static const String routeName = 'offer_screen';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBarInMenu(scaffoldKey, appBarTitle: 'Special Offer', haveTitle: true),
      drawer: const Drawer(),
      body: const OfferBody(),
    );
  }
}
