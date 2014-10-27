# class UsersController < ApplicationController
# 	before_action :authenticate_user!


# 	def index
#         @users = user_id.all
#     end


# 	def show
#     	# @user = UsersController.find(params[:id])
# 	end

# 	def new
# 		@user = User.new
# 	end
	
# 	def create
# 		@user = User.new(create_params)
# 		@user.save
# 		redirect_to users_path
# 	end

# 	def edit
# 		@user = User.find(params[:id])
# 	end

# 	def update
# 		@user = User.find(params[:id])
# 		if @user.update(user_params)
# 			redirect_to user_path
# 		else
# 			render 'edit'
# 		end
# 	end

# 	def destroy
# 		@user = User.find(params[:id])
#     	@user.destroy
#     	respond_to do |format|
#      		format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
#       		format.json { head :no_content }
#     	end
#  	end

# 	private
# 	def create_params
# 		params.require(:account).permit(:expense_id, :user_id)
# 	end



# end
