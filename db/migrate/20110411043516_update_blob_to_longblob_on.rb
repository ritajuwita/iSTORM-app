class UpdateBlobToLongblobOn < ActiveRecord::Migration
  def self.up
    change_column :db_files, :data, :longblob
  end

  def self.down
    change_column :db_files, :data, :blob
  end
end
