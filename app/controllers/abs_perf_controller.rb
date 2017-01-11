class AbsPerfController < ApplicationController
  def index
    @performance_by_decile = DecilePerformance.all
  end
end
