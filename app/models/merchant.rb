class Merchant < ApplicationRecord
	has_many :transactions, :dependent => :delete_all
	validate :name, presence: true, length: { maximum: 64, minimum: 12 }
	validate :email, presence: true, uniquiness: true
end
