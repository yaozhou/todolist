class TodoListItemsController < ApplicationController
  def create
    @todo_list_category = TodoListCategory.find(params[:todo_list_category_id])
    @todo_list_item = @todo_list_category.todo_list_items.create(
                          params[:todo_list_item].permit(:name, :content, :done))
    redirect_to todo_list_categories_path
  end

  def destroy
    @todo_list_category = TodoListCategory.find(params[:todo_list_category_id])
    @todo_list_item = @todo_list_category.todo_list_items.find(params[:id])
    @todo_list_item.destroy

    redirect_to todo_list_categories_path

  end
end
