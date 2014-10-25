class ExpensesController < ApplicationController

	def index
		@expenses = Expense.all
	end

	def new
		@expense = Expense.new
	end
	
	def create
		@expense = Expense.new(create_params)
		@expense.save
		redirect_to expenses_path
	end

	def show
		@expense = Expense.find(params[:id])
	end

	def edit
		@expense = Expense.find(params[:id])
	end

	def update
		@expense = Expense.find(params[:id])
		# if @expense.update(expense_params)
		# 	redirect_to expenses_path
		# else
		# 	render 'edit'
		# end
	end

	def destroy
		@expense = Expense.find(params[:id])
    	@expense.destroy
    	respond_to do |format|
     		format.html { redirect_to menus_url, notice: 'Expense was successfully destroyed.' }
      		format.json { head :no_content }
    	end
 	end

 	def delete
 		@expense = Expense.find(params[:id])
 		@expense.delete
 	end	


	private
	def create_params
		params.require(:expense).permit(:item, :amount, :categorie)
	end

end

