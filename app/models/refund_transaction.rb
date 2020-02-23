class RefundTransaction < Transaction
	belongs_to :merchant
	validates :parent_id, presence: true
	validates :amount, presence: true,  format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
	validates :uuid, presence: true


	before_valiation validate_uuid_format(record.uuid)

	
end