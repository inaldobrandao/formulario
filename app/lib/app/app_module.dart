import 'package:flutter_modular/flutter_modular.dart';

import 'pages/clint_page.dart';
import 'pages/details_page.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const ClientPage());
    r.child('/details',
        child: (_) => DetailsPage(
              client: r.args.data,
            ));
  }
}
