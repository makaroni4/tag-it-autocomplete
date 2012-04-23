class AddSubmitsTags < ActiveRecord::Migration
  def change
    create_table :submits_tags, :id => false do |t|
      t.integer :submit_id
      t.integer :tag_id
    end

	  add_index :submits_tags, :submit_id
	  add_index :submits_tags, :tag_id
  end
end
