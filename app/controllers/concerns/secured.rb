module Secured
  extend ActiveSupport::Concern

  included do
    before_action :logged_in_using_omniauth? unless ENV['AUTH0_DISABLED'] == 'true'
  end

  def logged_in_using_omniauth?
    redirect_to '/auth/auth0' unless session[:userinfo].present?
  end
end
