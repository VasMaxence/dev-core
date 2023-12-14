/// @category Interfaces, Repositories
/// 
/// Cette interface définit les méthodes de base pour
/// les repository ayant une communication avec une
/// base de données.
/// 
/// Lorsque vous déclarez un repository, vous devez
/// utiliser cette interface pour définir les méthodes
/// de base de votre repository.
/// Vous devez également lui passer le type [T] qui
/// doit être égale au type de votre base de données.
/// 
/// Exemple :
/// 
/// ```dart
/// class MyRepository extends DatabaseInterface<CollectionReference> {
///   @override
///   Future<MyDatabase> getDatabase() async {
///     return await FirebaseFirestore.collection("");
///   }
/// 
abstract class DatabaseInterface<T> {
  /// Méthode permettand de récupérer l'accès à la
  /// base de données.
  Future<T> getDatabase();
}