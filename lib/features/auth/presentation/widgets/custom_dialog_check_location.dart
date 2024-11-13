import 'package:fast_delivery/core/utils/exports.dart';

class CustomDialogCheckLocation extends StatelessWidget {
  const CustomDialogCheckLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locationService = LocationService();

    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: AppColors.whiteShade,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.48,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.svgLocationIcon),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const Text(
                    'Enable your location',
                    style: TextStyles.sLgMedium,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Choose your location to start find the request around you',
                    textAlign: TextAlign.center,
                    style: TextStyles.sSmMedium.copyWith(
                      color: AppColors.onBoardingSubTitleColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            CustomMainButton(
              widgetInCenter: Text(
                'Use my location',
                style: TextStyles.sLgMedium.copyWith(
                  color: AppColors.whiteShade,
                ),
              ),
              bgButtonColor: AppColors.primaryColor700,
              onPressed: () async {
                await enableYourLocation(locationService);
              },
            ),
            const SizedBox(height: 20),
            CustomMainButton(
              widgetInCenter: Text(
                'Skip for now',
                style: TextStyles.sLgMedium.copyWith(
                  color: AppColors.infoColor,
                ),
              ),
              bgButtonColor: Colors.transparent,
              onPressed: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
