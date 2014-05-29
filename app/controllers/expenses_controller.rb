class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new
    @expense.date_occured = params[:date_occured]
    @expense.event_id = params[:event_id]
    @expense.amount = params[:amount]
    @expense.description = params[:description]
    @expense.user_id = params[:user_id]

    if @expense.save
      redirect_to "/expenses", :notice => "Expense created successfully."
    else
      render 'new'
    end
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])

    @expense.date_occured = params[:date_occured]
    @expense.event_id = params[:event_id]
    @expense.amount = params[:amount]
    @expense.description = params[:description]
    @expense.user_id = params[:user_id]

    if @expense.save
      redirect_to "/expenses", :notice => "Expense updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @expense = Expense.find(params[:id])

    @expense.destroy

    redirect_to "/expenses", :notice => "Expense deleted."
  end
end
