

abstract class BaseDataMapper<Entity, Model> {
  /// Chuyển từ Data Model sang Domain Entity
  Entity mapToEntity(Model? data);

  /// Chuyển từ Domain Entity sang Data Model
  Model mapToData(Entity entity);
}