class OnboardingEntity{
  OnboardingEntity({
    required this.imgPath,
    required this.title,
    required this.subTitle,
});

  String imgPath;
  String title;
  String subTitle;
}

List<OnboardingEntity> onboardingData = [

  OnboardingEntity(
      imgPath: 'assets/images/onboarding_one.png',
      title: 'Welcome to HIDEFY',
      subTitle: 'Lorem ipsum dolor sit amet consectetur. Vel id morbi neque pharetra',
  ),

  OnboardingEntity(
      imgPath: 'assets/images/onboarding_two.png',
      title: 'Privacy & Security',
      subTitle: 'Lorem ipsum dolor sit amet consectetur. Vel id morbi neque pharetra',
  ),

];

