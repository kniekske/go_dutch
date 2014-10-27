class AccountsController < ApplicationController


    def index
        @accounts = Account.all
    end


	def show
    	@account = Account.find(params[:id])
	end

	def new
		@account = Account.new
		@account.save
		redirect_to accounts_path
	end
	
	def create
		@account = Account.new(create_params)
		@account.save
		redirect_to accounts_path
	end


	def edit
		@account = Account.find(params[:id])
	end

	def update
		@account = Account.find(params[:id])
		if params[:add_current_user] == 'true'
			@user = User.find(current_user.id)
			ua = UsersAccount.new(:user_id => @user.id, :account_id => @account.id)
			if ua.save
				redirect_to account_path(@account), notice: 'User Added Successfully'
			else
				redirect_to accounts_path, notice: 'Duplicate User Id'
			end
		else
			if @account.update(account_params)
				redirect_to account_path
			else
				render 'edit'
			end
		end
	end

	def destroy
		@account = Account.find(params[:id])
    	@account.destroy
    	respond_to do |format|
     		format.html { redirect_to accounts_path, notice: 'Account was successfully destroyed.' }
      		format.json { head :no_content }
    	end
 	end

 	def delete
 		@account = Account.find(params[:id])
    	@account.delete
 	end	

	private
	def account_params
		params.require(:account).permit(:expense_id, :user_id)
	end

	


end
