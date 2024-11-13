import 'package:fast_delivery/core/utils/exports.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key, required this.screenName});

  final String screenName;

  static const String routeName = 'set_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: SetPasswordBody(screenName: screenName),
    );
  }
}
