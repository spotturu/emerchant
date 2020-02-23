class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def validate_uuid_format(uuid)
  		uuid_regex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/
  		return true if uuid_regex.match?(uuid.to_s.downcase)
  		errors.add("Given argument is not a valid UUID: '#{format_argument_output(uuid)}'")
	end
end
