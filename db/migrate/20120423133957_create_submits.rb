class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      
      t.timestamps
    end
  end
end
