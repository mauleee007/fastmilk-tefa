
import 'package:get_it/get_it.dart';
import 'package:fastmilk_admin/core/services/Firestore_service.dart';
GetIt locator;
void setupLocator(){
  locator.registerLazySingleton(() => FirestoreService());
}