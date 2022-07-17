// ignore_for_file: prefer_typing_uninitialized_variables

class OnboardingInfo{
  final image;
  final title;
  final description;

  OnboardingInfo(this.image, this.title, this.description);

}

 List<OnboardingInfo> onboardingPages = [
   OnboardingInfo('assets/undraw_business.png', 'Lend Items', 'Lend items and get paid by the borrower'),
    OnboardingInfo('assets/undraw_gone.png', 'Borrow Items', 'Rent items and return at an affordable cost'),
     OnboardingInfo('assets/undraw_world.png', 'Track Your Items', 'Rent items and return at an affordable cost')
  ];