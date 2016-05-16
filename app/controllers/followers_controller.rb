class FollowersController < ApplicationController

  before_action :set_follow, only: [:destroy]
  
	def create
    @follow = Follower.new(user_id: current_user.id, boat_id: params[:boat_id])

    respond_to do |format|
      if @follow.save
        format.html { redirect_to :back, notice: 'follow was successfully created.' }
        format.json { render :show, status: :created, location: @follow }
      else
        format.html { render :new }
        format.json { render json: @follow.errors, status: :unprocessable_entity }
      end
    end
  end 

  def index
  	@follow = Follower.all
  	@boat = Boat.all
  end

  def destroy
    @follow.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'follow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow
      @follow = Follower.find(params[:id])
    end

end
