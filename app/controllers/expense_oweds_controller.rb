class ExpenseOwedsController < ApplicationController
  def index
    @expense_oweds = ExpenseOwed.all
  end

  def show
    @expense_owed = ExpenseOwed.find(params[:id])
  end

  def new
    @expense_owed = ExpenseOwed.new
  end

  def create
    @expense_owed = ExpenseOwed.new
    @expense_owed.portion_owed = params[:portion_owed]
    @expense_owed.user_id = params[:user_id]
    @expense_owed.expense_id = params[:expense_id]

    if @expense_owed.save
      redirect_to "/expense_oweds", :notice => "Expense owed created successfully."
    else
      render 'new'
    end
  end

  def edit
    @expense_owed = ExpenseOwed.find(params[:id])
  end

  def update
    @expense_owed = ExpenseOwed.find(params[:id])

    @expense_owed.portion_owed = params[:portion_owed]
    @expense_owed.user_id = params[:user_id]
    @expense_owed.expense_id = params[:expense_id]

    if @expense_owed.save
      redirect_to "/expense_oweds", :notice => "Expense owed updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @expense_owed = ExpenseOwed.find(params[:id])

    @expense_owed.destroy

    redirect_to "/expense_oweds", :notice => "Expense owed deleted."
  end
end
