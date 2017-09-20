class JobsController < ApplicationController
before_action :find_jobs, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @job= Job.new
  end

  def update
  end

  def edit
  end

  def create
    @job= Job.new(jobs_params)

    if @job.save
      redirect_to @job
    else
      render "New"
  end

  def destroy
  end

  private

  def jobs_params
    params.require(:job).permit(:title, :description, :company, :url)
  end

  def find_jobs
    @job= Job.find(params[:id])
  end

end
