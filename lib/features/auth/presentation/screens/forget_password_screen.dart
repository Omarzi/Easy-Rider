import 'package:fast_delivery/core/utils/exports.dart';
import 'package:fast_delivery/features/auth/presentation/widgets/forget_password_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  static const String routeName = 'forget_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: const ForgetPasswordBody(),
    );
  }
}
