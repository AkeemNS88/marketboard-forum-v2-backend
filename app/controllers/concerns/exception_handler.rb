module ExceptionHandler
    # allows access to "included method" evaluating code block in context of "base class.""
    extend ActiveSupport::Concern
  
    included do
      rescue_from ActiveRecord::RecordNotFound do |e|
        json_response({ errors: e.message }, :not_found)
      end
  
      rescue_from ActiveRecord::RecordInvalid do |e|
        json_response({ errors: e.message }, :unprocessable_entity)
      end
    end
  end