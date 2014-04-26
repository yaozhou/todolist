class AddUserIdToTodoListCategories < ActiveRecord::Migration
  def change
    add_column :todo_list_categories, :user_id, :integer
  end
end
