import 'package:fast_delivery/core/utils/exports.dart';

class SendVerificationScreen extends StatelessWidget {
  const SendVerificationScreen({super.key});

  static const routeName = '/send-verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: const SendVerificationBody(),
    );
  }
}
