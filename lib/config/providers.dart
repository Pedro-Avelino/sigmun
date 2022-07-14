import 'package:sigmun/app/providers/app_provider.dart';
import 'package:sigmun/app/providers/event_provider.dart';
import 'package:sigmun/app/providers/route_provider.dart';

/*
|--------------------------------------------------------------------------
| Providers
| Add your "app/providers" here.
| Providers are booted when your application start.
|
| Learn more: https://nylo.dev/docs/3.x/providers
|--------------------------------------------------------------------------
*/

final providers = {
  AppProvider: AppProvider(),
  RouteProvider: RouteProvider(),
  EventProvider: EventProvider(),
};
