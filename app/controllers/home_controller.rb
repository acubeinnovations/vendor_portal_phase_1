class HomeController < ApplicationController
  before_filter :authenticate_user!
  layout 'vendor_portal'
	def index
  end
end
