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

	
	def destroy
		@account = Account.find(params[:id])
    	@account.destroy
    	respond_to do |format|
     		format.html { redirect_to accountss_url, notice: 'Account was successfully destroyed.' }
      		format.json { head :no_content }
    	end
 	end

 	def delete
 		@account = Account.find(params[:id])
    	@account.delete
 	end	

	private
	def create_params
		params.require(:account).permit(:expense_id, :user_id)
	end

end
