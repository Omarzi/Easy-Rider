import 'package:fast_delivery/core/utils/exports.dart';

AppBar buildAppBar({
  required BuildContext context,
  String? centerTitleText,
}) {
  return AppBar(
    backgroundColor: AppColors.whiteShade,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
              const SizedBox(width: 5),
              Text(
                'Back',
                style: TextStyles.sLgRegular.copyWith(
                  color: AppColors.contentSecondary,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              centerTitleText ?? '',
              style: TextStyles.hSmMedium,
            ),
          ),
        ),
        const SizedBox(width: 48),
      ],
    ),
  );
}