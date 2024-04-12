import '../Constants/Strings/app_strings.dart';

class OnboardModel {
  final String title;
  final String description;

  OnboardModel({
    required this.title,
    required this.description,
  });
  static List<OnboardModel> onboardModel = [
    OnboardModel(
      title: AppString.onboardScreenTitle,
      description: AppString.onboardScreenDescription,
    ),
    OnboardModel(
      title: AppString.onboardScreenTitle,
      description: AppString.onboardScreenDescription,
    ),
    OnboardModel(
      title: AppString.onboardScreenTitle,
      description: AppString.onboardScreenDescription,
    ),
  ];
}
