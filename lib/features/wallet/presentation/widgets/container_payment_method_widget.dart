import 'package:fast_delivery/core/utils/exports.dart';

class ContainerPaymentMethod extends StatefulWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const ContainerPaymentMethod({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  ContainerPaymentMethodState createState() => ContainerPaymentMethodState();
}

class ContainerPaymentMethodState extends State<ContainerPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: widget.isSelected ? 1 : 0.5,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.only(
            left: 17,
            top: 13,
            bottom: 13,
          ),
          // padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(vertical:  5),
          decoration: BoxDecoration(
            color: AppColors.primaryColor50,
            borderRadius: BorderRadius.circular(AppConstants.borderRadius / 2),
            border: Border.all(
              color: AppColors.primaryColor,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              widget.icon,
              const SizedBox(width: 13),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyles.lLgMedium.copyWith(
                      color: widget.isSelected ? AppColors.gray700 : AppColors.contentTertiary,
                    ),
                  ),
                  Text(
                    widget.subtitle,
                    style: TextStyles.bMdMedium.copyWith(
                      color: AppColors.gray300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}