class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :confession

      t.timestamps
    end
    add_index :comments, :confession_id
  end
end