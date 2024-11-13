import 'package:fast_delivery/core/utils/exports.dart';

class ChoiceLoginOrSignupScreen extends StatelessWidget {
  const ChoiceLoginOrSignupScreen({super.key});

  static const routeName = 'choice_login_or_register_screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ChoiceLoginOrSignupBody()),
    );
  }
}
