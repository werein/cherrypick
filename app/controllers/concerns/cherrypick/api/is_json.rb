module Cherrypick
  module API
    module IsJSON
      extend ActiveSupport::Concern

      included do
        respond_to :json

        before_filter :set_default_response_format
      end

      private
        def set_default_response_format
          request.format = :json
        end
    end
  end
end
