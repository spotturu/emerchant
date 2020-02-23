class Merchant < ApplicationRecord
	has_many :transactions, :dependent => :delete_all
	validates :name, presence: true, uniqueness: { case_sensitive: false },
            length: { minimum: 2, maximum: 127 }

	validates :email, presence: true, 
				uniqueness: { case_sensitive: false },
            	length: { minimum: 2, maximum: 127 }

end
