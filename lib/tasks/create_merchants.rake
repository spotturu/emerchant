# frozen_string_literal: true
require 'csv'

namespace :default_merchants do
  desc 'Create default merchants task merchants:finish'
  task create: :environment do
    
    Rails.logger = Logger.new(STDOUT)
    Rails.logger.debug 'Running task default_merchants: create'

	data = CSV.read('db/merchants.csv')
	
	Merchant.delete_all

	return if data.blank?
    
    ACTIVE = 1
    data.each do |record|
    	email = record[1]
    	name = record[0]
    	unless Merchant.exists?(email: email)
    	 merchant = Merchant.create(name: name, email: email, status: ACTIVE)
		 merchant.save
		end
	end
    Rails.logger.debug 'Task Create default merchants completed'
  end
end
