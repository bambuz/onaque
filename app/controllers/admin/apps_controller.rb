class Admin::AppsController < ApplicationController

  def index
  	@apps = App.all
  end

  def new
  	@app = App.new
  end

  def create
  	@app = App.new app_params
  	if @app.save
			redirect_to admin_apps_url
		else
			render "new"
		end
  end

  def edit
  	@app = App.find params[:id]
  end

  def update
  	@app = App.find params[:id]
  	if @app.update app_params
  		redirect_to admin_apps_url
  	else
  		render "edit"
  	end
  end

  def destroy
  	@app = App.find params[:id]
  	@app.destroy

  	redirect_to admin_apps_url
  end

  private

  def app_params
  	params[:app].permit(:thumbnail, :name, :link, :category)
  end

end