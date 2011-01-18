require 'datamapper'
require 'dm-migrations'
require 'dm-migrations/migration_runner'

DataMapper.setup(:default, {
  :adapter  => 'sqlite3',
  :database => ':memory:'})  

migration 1, :create_join_tables do
  up do
    create_table :active_record_has_many_targets_data_mapper_objects do
      column :data_mapper_object_id, Integer
      column :active_record_has_many_target_id, String
    end

    create_table :data_mapper_objects_mongo_mapper_has_many_targets do
      column :data_mapper_object_id, Integer
      column :mongo_mapper_has_many_target_id, String
    end

    create_table :couch_rest_has_many_targets_data_mapper_objects do
      column :data_mapper_object_id, Integer
      column :couch_rest_has_many_target_id, String
    end

    create_table :data_mapper_has_many_targets_data_mapper_objects do
      column :data_mapper_object_id, Integer
      column :data_mapper_has_many_target_id, String
    end

    create_table :data_mapper_objects_mongoid_has_many_targets do
      column :data_mapper_object_id, Integer
      column :mongoid_has_many_target_id, String
    end
  end
end

migrate_up!
