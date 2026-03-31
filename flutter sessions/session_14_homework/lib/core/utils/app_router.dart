import 'package:go_router/go_router.dart';
import 'package:session_14_homework/core/utils/bmi_calculator.dart';
import 'package:session_14_homework/features/home/presentation/views/home_view.dart';
import 'package:session_14_homework/features/home/presentation/views/result_view.dart';

abstract class AppRouter {
  static final kResultView = "/ResultView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => HomeView()),
      GoRoute(
        path: kResultView,
        builder: (context, state) {
          BMICalculator bmi = state.extra as BMICalculator;
          return ResultView(bmi: bmi);
        },
      ),
    ],
  );
}
