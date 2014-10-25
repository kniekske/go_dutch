class HomeController < ApplicationController

 	def index
        @accounts = Account.all
    end


	def show
    	@accounts = Account.find(params[:id])
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(create_params)
		@account.save
		redirect_to accounts_path
	end

end
