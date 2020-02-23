class Api::V1::TransactionsController < ActionController::API
  def index
    transactions = Transaction.all
    trasnactions = transactions.map do |trasaction|
      { id: transaction.id, name: transaction.amount, type: transaction.type }
    end
    
    render json: { results: transactions }.to_json, status: :ok
  end
end