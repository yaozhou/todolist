class TodoListItem < ActiveRecord::Base
  belongs_to :todo_list_category
end
