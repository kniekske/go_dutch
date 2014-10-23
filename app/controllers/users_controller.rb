class UsersController < ApplicationController
	before_action :authenticate_user!

def index 
	puts 'cookie'
end

end
