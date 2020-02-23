class Api::V1::TransactionsController < ActionController::API
include ActionController::MimeResponds

  def create
  	# test command
  	# curl -i -X POST -H "Content-Type: application/json, Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHBpcnkiOjE1ODI1NDE3MDd9.s9RoJPRl0efRaaEtLJbO6kVroJCM7znQQA2xWFA5v58" -d '{"merchant_id": 3, "type": "Charge", "amount": "100.90", "uuid": 123325346346}' http://localhost:3000/api/v1/transactions

  	transction = ChargeTransaction.create(merchant_id: params[:merchant_id], parent_id: 1, amount: params[:amount], uuid: params[:uuid])
  	respond_to do |format|
      if transction.save
        format.xml { render xml: transction.as_json, status: 201 }
        format.json { render json: { results: transction, status: 201 }.to_json}
      else
        format.xml { render xml: {error: transction.errors, status: 500 }.as_json}
        format.json { render json: {error: transction.errors, status: 500 }.to_json }
      end
  	end
  	
  end
end