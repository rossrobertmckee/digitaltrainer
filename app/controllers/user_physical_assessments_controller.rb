class UserPhysicalAssessmentsController < ApplicationController
		def new
		@assessment = UserPhysicalAssessment.new
	end

	def create
		@assessment = current_user.user_physical_assessment.create(assessment_params)
		redirect_to user_dashboard_path
	end

	def show
	end

	private 

	def assessment_params
		params.require(:user_physical_assessment).permit(:height, :weight, :age_in_years, :body_mass_index, :chest, :waist)
	end
end
