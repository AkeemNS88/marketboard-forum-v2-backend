
# Takes an object and status as an argument and returns render method in JSON
module Response
    def json_response(object, status = :ok)
      render json: object, status: status
    end
  end