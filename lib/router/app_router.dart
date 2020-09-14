import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_eos_playground/widgets/src/home/home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: OtherPage),
  ],
)
class $AppRouter {}
