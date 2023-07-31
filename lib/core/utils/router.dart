
import 'package:bookly_app_bloc/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app_bloc/Features/home/presentation/view/widget/book_details_view_body.dart';
import 'package:bookly_app_bloc/Features/search/presentaion/view/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const homeview = "/homeview";
  static const bookdetails = "/bookdetails";
  static const searchview = "/searchview";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: homeview, builder: (context, state) => const HomeView()),
      GoRoute(path: searchview, builder: (context, state) => const SearchView()),
      GoRoute(
          path: bookdetails,
          builder: (context, state) => const BookDetailsViewBody()),
    ],
  );
}
