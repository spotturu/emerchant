class Transaction < ApplicationRecord
	scope :refund, -> { where(type: 'Refund') }
  	scope :cancel, -> { where(type: 'Cancel') }
  	scope :charge, -> { where(type: 'Charge') }
end
