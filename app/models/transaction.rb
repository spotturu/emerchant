class Transaction < ApplicationRecord
	scope :refund, -> { where(status_type: 'Refund') }
  	scope :cancel, -> { where(status_type: 'Cancel') }
  	scope :charge, -> { where(status_type: 'Charge') }

	# belongs_to :merchant
	# scope :transactions_by, ->(type) do
	# 	where(status_type: type)
	# end
end
