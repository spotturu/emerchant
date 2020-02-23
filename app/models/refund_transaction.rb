class RefundTransaction < Transaction
	belongs_to :merchant
	validates :parent_id, presence: true
	validates :amount, presence: true,  format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
	validates :uuid, presence: true


	before_valiation validate_uuid_format

	def validate_uuid_format(uuid)
  		uuid_regex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/
  		return true if uuid_regex.match?(uuid.to_s.downcase)
  		errors.add("Given argument is not a valid UUID: '#{format_argument_output(uuid)}'")
	end
end