import 'package:fast_delivery/core/utils/exports.dart';

class AddAmountScreen extends StatelessWidget {
  const AddAmountScreen({super.key});

  static const String routeName = 'add_amount_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: const AddAmountBody(),
    );
  }
}
