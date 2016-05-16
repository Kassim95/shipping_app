class BoatsController < ApplicationController
  def index
    # session.clear

    @me = current_user.id
    @boat = Boat.where(user_id: @me)
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boats_params)
    @boat.save
    redirect_to boats_path
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update 
    @boat = Boat.find(params[:id])
    @boat.update(boats_params)
    @boat.save
    redirect_to boats_path
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy  
    redirect_to boats_path
  end

  def show
    @boat = Boat.find(params[:id])
    @job = Job.new
    @jobs = Job.where(boat_id: params[:id])
   @follow = Follower.where(:user_id => current_user.id, :boat_id => @boat.id).first
    puts @like

  end

  private
  def boats_params
    params.require(:boat).permit(:avatar, :user_id, :name, :containers, :location)
  end
end
