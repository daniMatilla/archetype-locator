import 'package:isar/isar.dart';
import 'package:locator/locator.dart';
import 'package:path_provider/path_provider.dart';

import 'entity/schemas.barrel.dart';

class DataBaseService {
  late Future<Isar> db;

  DataBaseService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      final isar = await Isar.open(
        _schemas,
        directory: dir.path,
        inspector: !releaseMode,
      );

      return isar;
    }

    return Future.value(Isar.getInstance());
  }

  // Add the schemas here
  final _schemas = [
    SampleEntitySchema,
  ];
}
