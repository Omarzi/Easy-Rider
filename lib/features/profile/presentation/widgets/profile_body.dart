import 'package:fast_delivery/core/utils/exports.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController streetController = TextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 16,
          bottom: 16,
        ),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 58,
                    backgroundColor: AppColors.gray200,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(Assets.svgCameraIcon),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Omar Abdel Aziz',
                style: TextStyles.tLgMedium.copyWith(
                  color: AppColors.contentTertiary,
                ),
              ),
              const SizedBox(height: 24),

              /// Phone Number
              CustomMobileNumberField(
                controller: phoneController,
              ),
              const SizedBox(height: 20),

              /// Email
              CustomTextFormField(
                hintText: 'Email',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),

              /// Street
              CustomTextFormField(
                hintText: 'Street',
                controller: streetController,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),

              CustomDropdown(
                hintText: 'City',
                items: const ['Cairo', 'Giza', 'Alexandria'],
                onChanged: (value) {
                  // Handle selection change
                },
              ),


              const SizedBox(height: 20),

              CustomMainButton(
                widgetInCenter: Text(
                  'Update',
                  style: TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
                ),
                bgButtonColor: AppColors.primaryColor700,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
