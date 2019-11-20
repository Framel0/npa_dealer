import 'package:flutter/material.dart';
import 'package:npa_dealer/page/pages.dart';
import 'package:npa_dealer/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case dispatchRoute:
        return MaterialPageRoute(builder: (_) => DispatchPage());
        break;
      case consumerRoute:
        return MaterialPageRoute(builder: (_) => ConsumerPage());
        break;
      case newConsumerRoute:
        return MaterialPageRoute(builder: (_) => NewConsumersPage());
        break;
      case newConsumerDetailRoute:
        return MaterialPageRoute(builder: (_) => NewConsumerDetailPage());
        break;
      case existentConsumerRoute:
        return MaterialPageRoute(builder: (_) => ExistentConsumersPage());
        break;
      case existentConsumerDetailRoute:
        return MaterialPageRoute(builder: (_) => ExistentConsumerDetailPage());
        break;
      case reportRoute:
        return MaterialPageRoute(builder: (_) => ReportPage());
        break;
      case reportDetailRoute:
        return MaterialPageRoute(builder: (_) => ReportDetailPage());
        break;
      case requestStockRoute:
        return MaterialPageRoute(builder: (_) => RequestStockPage());
        break;
      case productRoute:
        return MaterialPageRoute(builder: (_) => ProductPage());
        break;
      case summaryRoute:
        return MaterialPageRoute(
            builder: (_) => SummaryPage(
                  cylinders: args,
                ));
        break;

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold();
    });
  }
}
