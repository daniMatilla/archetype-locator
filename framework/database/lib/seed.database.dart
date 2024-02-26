import 'package:isar/isar.dart';
import 'package:locator/locator.dart';
import 'package:path_provider/path_provider.dart';

import 'sample/entity/sample.entity.dart';

class SeedDataBase {
  late Future<Isar> db;

  SeedDataBase() {
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
