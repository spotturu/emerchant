class Merchant < ApplicationRecord
	has_many :transactions, :dependent => :delete_all
end
