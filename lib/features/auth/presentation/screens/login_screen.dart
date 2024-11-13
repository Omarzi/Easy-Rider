import 'package:fast_delivery/core/utils/exports.dart';
import 'package:fast_delivery/features/auth/presentation/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: const LoginBody(),
    );
  }
}
