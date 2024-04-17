import '../Constants/Strings/app_strings.dart';

class OnboardModel {
  final String title;
  final String description;
  final String conditionTerm;
  OnboardModel({
    required this.conditionTerm,
    required this.title,
    required this.description,
  });
  static List<OnboardModel> onboardModel = [
    OnboardModel(
      title: AppString.onboardScreenTitle,
      description: AppString.onboardScreenDescription,
      conditionTerm: AppString.confirmCondition,
    ),
    OnboardModel(
      title: AppString.onboardScreenTitle,
      description: AppString.onboardScreenDescription,
      conditionTerm: AppString.confirmCondition,
    ),
    OnboardModel(
      title: AppString.onboardScreenTitle,
      description: AppString.onboardScreenDescription,
      conditionTerm: AppString.confirmCondition,
    ),
  ];
}
