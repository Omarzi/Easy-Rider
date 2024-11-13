import 'package:fast_delivery/core/utils/exports.dart';

class CustomFavouriteItem extends StatelessWidget {
  const CustomFavouriteItem({
    super.key, required this.placeName, required this.placeLocationsDescription,
  });

  final String placeName;
  final String placeLocationsDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryColor100, width: 1),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: Icon(Iconsax.location)),
          const SizedBox(width: 10),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  placeName,
                  style: TextStyles.sLgMedium.copyWith(
                    color: AppColors.contentSecondary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  placeLocationsDescription,
                  style: TextStyles.bSmMedium.copyWith(
                    color: AppColors.contentDisabled,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SvgPicture.asset(Assets.svgDeleteIcon)),
        ],
      ),
    );
  }
}
