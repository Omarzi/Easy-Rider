import 'package:fast_delivery/core/utils/exports.dart';
import 'package:fast_delivery/features/offer/presentation/screens/offer_screen.dart';
import 'package:fast_delivery/features/profile/presentation/screens/profile_screen.dart';
import 'package:fast_delivery/features/wallet/presentation/screens/wallet_screen.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key, required this.index});

  final int index;

  static const String routeName = 'bottom_navigation_menu';

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationMenu> {
  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = widget.index;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
      ),
      const FavouriteScreen(),
      const WalletScreen(),
      const OfferScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: AspectRatio(
        aspectRatio: 393 / 90,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(AppConstants.borderRadius * 2),
            topLeft: Radius.circular(AppConstants.borderRadius * 2),
          ),
          child: Theme(
            data: ThemeData(splashColor: Colors.transparent),
            child: buildBottomNavigationBar(
              currentIndex: currentIndex,
              setState: (index) {
                currentIndex = index;
                setState(() {});
              },
            ),
          ),
        ),
      ),
    );
  }
}