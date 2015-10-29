class DashboardController < ApplicationController

	def user_dashboard
		@user = current_user.user_profile
		@physical_assessment = current_user.user_physical_assessment
	end

end
