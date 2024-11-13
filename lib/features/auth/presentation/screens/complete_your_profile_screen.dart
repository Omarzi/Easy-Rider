import 'package:fast_delivery/core/utils/exports.dart';

class CompleteYourProfileScreen extends StatelessWidget {
  const CompleteYourProfileScreen({super.key});

  static const routeName = 'complete-your-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, centerTitleText: 'Profile'),
      body: const CompleteYourProfileBody(),
    );
  }
}
