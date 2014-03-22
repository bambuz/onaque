class Admin::OperatingsystemsController < ApplicationController
  def index
  	@operatingsystems = Operatingsystem.all
  end

  def new
  	@operatingsystem = Operatingsystem.new
  end

  def create
  	@operatingsystem = Operatingsystem.new operatingsystem_params
  	if @operatingsystem.save
			redirect_to admin_operatingsystems_url
		else
			render "new"
		end
  end

  def edit
  	@operatingsystem = Operatingsystem.find params[:id]
  end

  def update
  	@operatingsystem = Operatingsystem.find params[:id]
  	if @operatingsystem.update operatingsystem_params
  		redirect_to admin_operatingsystems_url
  	else
  		render "edit"
  	end
  end

  def destroy
  	@operatingsystem = Operatingsystem.find params[:id]
  	@operatingsystem.destroy

  	redirect_to admin_operatingsystems_url
  end

  private

  def operatingsystem_params
  	params[:operatingsystem].permit(:name)
  end

end