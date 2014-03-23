class Admin::FunctionsController < ApplicationController

	before_filter :set_category, only: [:index, :new, :create]

  def index
  	@functions = @category.functions
  end

  def new
  	@function = @category.functions.build
  end

  def create
  	@function = @category.functions.build params_functions
  	if @function.save
			redirect_to admin_category_functions_url
		else
			render "new"
		end
  end

  def edit
  	@function = Function.find params[:id]
  end

  def update
  	@function = Function.find params[:id]
  	if @function.update params_functions
  		redirect_to admin_category_functions_url(@function)
  	else
  		render "edit"
  	end
  end

  def destroy
  	@function = Function.find params[:id]
  	@function.destroy

  	redirect_to admin_category_functions_url(@function.category_id)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def params_functions
  	params[:function].permit(:name)
  end

end


 

  

  

  

  