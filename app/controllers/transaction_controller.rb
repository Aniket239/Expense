class TransactionController < ApplicationController
  before_action :set_personnel
  def expense_index
   @expense= Expense.all      
  end
  def expense_create
      expense = Expense.new
      p "================================================================"
      p expense.amount = params[:amount]
      p expense.remarks = params[:remarks]
      p expense.item = params[:item]
      @current_personnel = Personnel.find(session[:personnel_id]) if session[:personnel_id]
      p expense.personnel_id = @current_personnel.id
      p "================================================================"
      p expense.save
      redirect_to transaction_expense_index_url
  end

  def expense_new
  end

  def expense_edit
     @expense = Expense.find(params[:format])
  end

  def expense_update
    p "================"
     p expense = Expense.find(params[:expense_id])
     expense.update(item: params[:item], amount: params[:amount], remarks: params[:remarks])
    
    redirect_to transaction_expense_index_url
  end

  def expense_destroy
    expense = Expense.find(params[:format])
    expense.destroy
    redirect_to transaction_expense_index_url
  end

  private

  def set_personnel
   @current_personnel = Personnel.find(session[:personnel_id]) if session[:personnel_id]
  end
end
