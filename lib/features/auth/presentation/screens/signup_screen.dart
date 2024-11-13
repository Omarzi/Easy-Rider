import 'package:fast_delivery/core/utils/exports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static const String routeName = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: const SignupBody(),
    );
  }
}
