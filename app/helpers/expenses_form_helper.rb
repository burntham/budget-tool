module ExpensesFormHelper
  def build_or_use_expense_detail(expense)
    if expense.expense_details.present?
      return expense.expense_details
    end
    expense.expense_details.build
  end
end