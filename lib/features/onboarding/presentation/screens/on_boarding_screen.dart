import 'package:fast_delivery/core/utils/exports.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  static const String routeName = 'onBoardingScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingBody()),
    );
  }
}
