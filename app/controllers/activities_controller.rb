class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    @activities_by_date = @activities.group_by(&:created_at)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(params[:activity])

    respond_to do |format|
      if @activity.save
        redirect_to @activity, notice: 'Activity was successfully created.'
      else
        render action: "new"
      end
    end
  end

  def update
    @activity = Activity.find(params[:id])

    respond_to do |format|
      if @activity.update_attributes(params[:activity])
        redirect_to @activity, notice: 'Activity was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    respond_to do |format|
      redirect_to activities_url
    end
  end
end
