class ChargeTransaction < Transaction
	scope :transactions, -> do
		transactions_by('Charge')
	end
end