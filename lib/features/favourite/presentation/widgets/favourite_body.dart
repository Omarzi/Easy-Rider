import 'package:fast_delivery/core/utils/exports.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return CustomFavouriteItem(
            placeName: AppConstants.placesName[index],
            placeLocationsDescription: AppConstants.placesLocationsDescription[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 24);
        },
        itemCount: AppConstants.placesName.length,
      ),
    );
  }
}
