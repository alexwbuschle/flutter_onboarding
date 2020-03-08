import 'package:onboarding/modules/onboarding/widgets/slider_tile.dart';

class OnboardingController {
  final List<SliderTile> pages = [
    SliderTile(
      title: 'First title',
      description: 'First description',
      imagePath: 'assets/svg/undraw_note_list_etto.svg',
    ),
    SliderTile(
      title: 'Second title',
      description: 'First description',
      imagePath: 'assets/svg/undraw_progress_overview_2dik.svg',
    ),
    SliderTile(
      title: 'Third title',
      description: 'First description',
      imagePath: 'assets/svg/undraw_progress_tracking_7hvk.svg',
    )
  ].toList();

  OnboardingController();

  int get totalPages => pages.length;
  int currentIndex = 0;
}
