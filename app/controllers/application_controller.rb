class ApplicationController < ActionController::API
  def generate_error(resource)
    error_messages = ''
    resource.errors.messages.each do |validation, message|
      error_messages += "#{validation.capitalize} (#{message[0]}); "
    end
    error_messages = error_messages.delete_suffix('; ')
    "ERROR: #{error_messages}"
  end
end
