class DashboardController < ApplicationController

  before_filter :authorize

  def index
    @activities = current_user.activities
    @activities_by_date = @activities.group_by { |activity| activity.created_at.to_date }
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

end
