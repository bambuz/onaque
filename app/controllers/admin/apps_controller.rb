class Admin::AppsController < ApplicationController

  before_action :set_category, only: [:index, :new, :create]
  before_action :operatingsystems, only: [:new, :create, :edit, :update, :index]

  def index
    @apps = @category.apps
  end

  def new
  	@app = @category.apps.build
    @functions = Function.where(category_id: @category.id)
    @functions.each do |function|
      value = function.values.build
      @app.values << value
    end
  end

  def create
    @app = App.new params_apps
    @app.category = @category
    @app.save

    redirect_to admin_category_apps_url
  end

  def edit
  	@app = App.find params[:id]
  end

  def update
  	@app = App.find params[:id]
  	if @app.update params_apps
  		redirect_to admin_category_apps_url(@app.category_id)
  	else
  		render "edit"
  	end

  end

  def destroy
  	@app = App.find params[:id]
  	@app.destroy

  	redirect_to admin_category_apps_url(@app.category_id)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def operatingsystems
    @operatingsystems = Operatingsystem.all
  end

  def params_apps
  	params[:app].permit(:thumbnail, :name, :link, :operatingsystem_id, values_attributes: [:valuenumber, :valuestring, :app_id, :function_id])
  end

end
