enum AppRoutes {
  initial('/'),
  invalidRoute('invalidRoute'),
  webview('webview'),
  homeScreen('homeScreen');


  const AppRoutes(this.routeName);

  final String routeName;

  static AppRoutes getRoute(String? name) {
    return switch (name) {
      '/' => AppRoutes.initial,
      'homeScreen' => AppRoutes.homeScreen,
      'webview' => AppRoutes.webview,
      String() || null => AppRoutes.invalidRoute,
    };
  }
}

class ApiErrorStrings {
  const ApiErrorStrings._();

  static const noInternetMsg = 'No internet connection.';
  static const somethingWrongErrorMsg =
      'Something went wrong! Please try after some time.';
}

class AppStrings {
  const AppStrings._();

  static const onboardingTitle = "Let's Organize\nYour Note TODO";
  static const onboardingSubtitle =
      'Make your todo in the note and manage your priority activity in daily'
      ' life to achieve goals.';
  static const aboutUsDescription="HHL© Hindu Help Line, known as a 'Reliable Friend of Hindus', a FREE service available 24 × 7, launched in 2011 by Dr Pravin Togadia, renowned Cancer Surgeon with a vision to help Hindus in emergencies like in Travel, accidents, vehicle failures, blood donation, Darshan, language help in other states, routine legal aspects etc. With just 1 App and 1 call the HHL Volunteers all India come ahead to hold the caller's hand and help FREE! HHL volunteer's wide network all India has helped millions of needy since the launch. Anybody can be a volunteer of HHL and India Health Line IHL with our professional training. HHL Hindu Help Line: A Reliable Friend of Hindus. (HHL is a voluntary social service for routine emergencies only.)";
  static const aboutUsSubTittle="To join us as Volunteer, click on the link here:";

}
