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
    @expense_owed.portion_owed = params[:portion_owed].to_f/100
    @expense_owed.user_id = User.find_by(:name => params[:name]).id
    @expense_owed.expense_id = params[:expense_id]
    event_id = Expense.find(params[:expense_id]).event_id

    if @expense_owed.save
      redirect_to "/events/#{event_id}", :notice => "Payer added successfully."
    else
      redirect_to :back, :alert => "Could not add payer."
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
    event_id = Expense.find(ExpenseOwed.find(params[:id]).expense_id).event_id

    @expense_owed.destroy

    redirect_to "/events/#{event_id}", :notice => "Expense owed deleted."
  end
end
