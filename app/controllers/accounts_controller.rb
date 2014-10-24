class AccountsController < ApplicationController


  def index
    @accounts = Accounts.all
  end


end
