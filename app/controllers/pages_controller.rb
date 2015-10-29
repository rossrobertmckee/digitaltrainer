class PagesController < ApplicationController

def index
	@devise_mapping ||= Devise.mappings[:user]
	if user_signed_in? && current_user.user_profile != nil
		@user_name = current_user.user_profile.user_name
	end
end


def resource_name
	:user
end

def resource
	@resource ||= User.new
end

def devise_mapping
	@devise_mapping ||= Devise.mappings[:user]
end

end
