class Admin::AppsController < ApplicationController

  before_filter :set_category, only: [:index, :new, :create]
  before_filter :operatingsystems, only: [:new, :create, :edit, :update, :index]

  def index
    @apps = @category.apps
  end

  def new
  	@app = @category.apps.build
  end

  def create
  	@app = @category.apps.build params_apps
  	if @app.save
			redirect_to admin_category_apps_url
		else
			render "new"
		end
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

  	redirect_to admin_category_apps_url(@app.category_id, @app)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def operatingsystems
    @operatingsystems = Operatingsystem.all
  end

  def params_apps
  	params[:app].permit(:thumbnail, :name, :link, :operatingsystem_id)
  end

end