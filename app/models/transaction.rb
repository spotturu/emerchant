class Transaction < ApplicationRecord
	belongs_to :merchant
	acts_as_list scope: :merchant
	scope transactions_by ->(type) do
		where(status_type: type)
	end
end

class Refund < Transaction
	validates :parent_id, presence: true
	scope transactions -> do
		transactions_by('Refund')
	end
end

class Cancel < Transaction
	scope transactions -> do
		transactions_by('Cancel')
	end
end

class Success < Transaction
	scope transactions -> do
		transactions_by('Success')
	end
end