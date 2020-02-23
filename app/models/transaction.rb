class Transaction < ApplicationRecord
    scope :refund, -> { where(type: 'Refund') }
    scope :cancel, -> { where(type: 'Cancel') }
    scope :charge, -> { where(type: 'Charge') }


    def self.hourly_cleanup_the_records
      	trans = Transaction.where("created_at < #{Time.zone.now-1.hour}")
      	trans.each do |tran|
      		tran.delete
      	end
    end
end
