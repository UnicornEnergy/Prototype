class AboutsController < ApplicationController
  before_action :authenticate_team!, :except => [:show]
	def show
		
	end

end
