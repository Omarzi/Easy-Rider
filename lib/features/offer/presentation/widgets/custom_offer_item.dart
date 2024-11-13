import 'package:fast_delivery/core/utils/exports.dart';

class CustomOfferItem extends StatelessWidget {
  const CustomOfferItem({
    super.key, required this.offerModel,
  });
  final OfferModel offerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.whiteShade,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.backgroundColorWithOpacity4,
            blurRadius: 4,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.primaryColor,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.primaryColor100,
              child: SvgPicture.asset(offerModel.imageOfferUrl),
            ),
          ),
          const SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offerModel.title,
                style: TextStyles.hSmBold.copyWith(
                  color: AppColors.gray900,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                offerModel.subTitle,
                style: TextStyles.bSmMedium.copyWith(
                  color: AppColors.contentDisabled,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}