class CreateDataLoaders < ActiveRecord::Migration[5.0]
  def change
    create_table :data_loaders do |t|

      t.timestamps
    end
  end
end
