class TodoListCategoriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @todo_list_category = TodoListCategory.new
  end

  def create
    aTemp = params[:todo_list_category].permit(:name)
    @todo_list_category = TodoListCategory.new(aTemp)
    @todo_list_category.user_id = current_user.id
    if @todo_list_category.save
      redirect_to todo_list_categories_path
    else
      render 'new'
    end
  end

  def show
    @todo_list_category = TodoListCategory.find(params[:id])

  end

  def destroy
    @todo_list_category = TodoListCategory.find(params[:id])
    @todo_list_category.destroy

    redirect_to todo_list_categories_path
  end

  def index
    @todo_list_category = TodoListCategory.new
    @todo_list_categories = TodoListCategory.where(
                   "user_id='#{current_user.id}'")
  end

  def edit
    @todo_list_category = TodoListCategory.find(params[:id])
    @todo_list_categories = TodoListCategory.all
  end

  def update
    @todo_list_category = TodoListCategory.find(params[:id])
    
    if @todo_list_category.update(params[:todo_list_category].permit(:name))
      redirect_to todo_list_categories_path
    else
      redirect_to edit_todo_list_category_path(params[:id])
    end
    
  end
    
end
