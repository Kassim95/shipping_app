class JobsController < ApplicationController
  def index
    @boat = Boat.all
  end

  def new
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to boats_path
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to boats_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to boats_path
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:boat_id, :name, :containers, :cargo, :origin, :cost, :destination)
  end
end
