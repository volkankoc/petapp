
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'nav_bar_provider.dart';

class Providers{
 Providers._();
  static List <SingleChildWidget> providerList = [
    ChangeNotifierProvider(create: (_) => NavBarProvider()),
  ];

}