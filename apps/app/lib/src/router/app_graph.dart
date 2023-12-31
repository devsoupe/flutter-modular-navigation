import 'package:di_injector/di_injector.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';
import 'package:root/root.dart';
import 'package:root_child/root_child.dart';

@Singleton()
class AppGraph extends GoGraph {
  @override
  List<GoScreen> get screenList => [
        getIt<RootNavScreen>().child([
          getIt<RootChildNavScreen>().child([]),
        ]),
        getIt<HomeNavScreen>().child([]),
      ];
}
