class CreateTodoListCategories < ActiveRecord::Migration
  def change
    create_table :todo_list_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
