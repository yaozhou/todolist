class TodoListCategory < ActiveRecord::Base
  has_many :todo_list_items, dependent: :destroy
end
