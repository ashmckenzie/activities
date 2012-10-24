class DashboardController < ApplicationController

  before_filter :authorize

  def index
    @activities = current_user.calendar_activities
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

end
