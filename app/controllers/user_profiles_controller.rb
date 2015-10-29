class UserProfilesController < ApplicationController
	def new
		@profile = UserProfile.new
	end

	def create
		@profile = current_user.create_user_profile(profile_params)
		redirect_to new_user_physical_assessment_path
	end

	def show
	end

private

	def profile_params
		params.require(:user_profile).permit(:user_name, :age, :zip_code)
	end
end

