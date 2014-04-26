class CreateTodoListItems < ActiveRecord::Migration
  def change
    create_table :todo_list_items do |t|
      t.string :name
      t.text :content
      t.boolean :done
      t.references :todo_list_category, index: true

      t.timestamps
    end
  end
end
