import 'package:fast_delivery/core/utils/exports.dart';

class CompleteYourProfileBody extends StatelessWidget {
  const CompleteYourProfileBody({super.key});

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
              const SizedBox(height: 30),

              /// Name
              CustomTextFormField(
                hintText: 'Full Name',
                controller: nameController,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),

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


              const SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    child: CustomMainButton(
                      widgetInCenter: Text(
                        'Cancel',
                        style: TextStyles.sLgMedium.copyWith(color: AppColors.contentSecondary),
                      ),
                      bgButtonColor: Colors.transparent,
                      borderColor: AppColors.primaryColor700,
                      onPressed: () {},
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: CustomMainButton(
                      widgetInCenter: Text(
                        'Save',
                        style: TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
                      ),
                      bgButtonColor: AppColors.primaryColor700,
                      onPressed: () {},
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
