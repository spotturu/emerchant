# frozen_string_literal: true

namespace :default_merchants do
  desc 'Create default merchants task merchants:finish'
  task create: :environment do
    logger = Rails.application.config.logger
    logger.debug 'Running task default_merchants: create'
    data = [{name: 'Mercedes-Benz', email: 'mbenz@example.com'},
    {name: 'volkswagen', email: 'volkswagen@example.com'},
    {name: 'Hundai', email: 'Hundai@example.com'},
    {name: 'Tayota', email: 'Tayota@example.com'}]
    ACTIVE = 1
    merchant = Merchant.new
    data.each do |record|
    	merchant.create(name: record[:name], email: record[:email], status: ACTIVE )
	end
    logger.debug 'Task Redmine issues status updation completed'
  end
end
