class JobsController < ApplicationController
  def index
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to jobs_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def job_params
    params.require(:job).permit(:name, :containers, :cargo, :origin, :cost, :destination)
  end
end
