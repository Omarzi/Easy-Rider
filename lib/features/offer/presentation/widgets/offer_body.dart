import 'package:fast_delivery/core/utils/exports.dart';
import 'package:fast_delivery/features/offer/presentation/widgets/custom_offer_item.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return CustomOfferItem(
            offerModel: AppConstants.offers[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 24);
        },
        itemCount: AppConstants.offers.length,
      ),
    );
  }
}