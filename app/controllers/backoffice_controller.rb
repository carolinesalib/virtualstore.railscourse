class ApplicationController < ActionController::Base
  before_action :authenticate_admin!

  layout 'backoffice'

end