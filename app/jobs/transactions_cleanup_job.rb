class TransactionsCleanupJob < ApplicationJob
 self.queue_adapter = :resque
 self.class.new.enqueue(wait_until: Time.now + 1.hour).perform_later

 def perform(*args)
    Transaction.hourly_cleanup_the_records
 end
end
