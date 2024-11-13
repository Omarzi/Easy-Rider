import 'package:fast_delivery/core/utils/exports.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key, required this.screenName});

  final String screenName;

  static const routeName = 'verify-otp-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: VerifyOtpBody(screenName: screenName),
    );
  }
}
