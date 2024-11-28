class ApplicationController < ActionController::API
    before_action :authenticate_user!
    include Devise::Controllers::Helpers
end
  