module Cherrypick
  module Services        
    class Locales

      def initialize locale, key
        @locale = locale
        @key = key
      end

      # Read locales and strip key if is provided
      # Thats helpfull, when is used some namespace
      def call
        @key ? read[@key] : read
      end

      private

        # Get all localization files from config/locales and convert them into hash
        # If locale is provided, keep only that one and remove iso_code from root
        def read
          result = {}
      
          Dir[File.join(Rails.root.join('config/locales'), '*.yml')].sort.each do |file|
            yml = YAML::load(IO.read(file))
            hash = @locale ? yml.to_hash[@locale] : yml.to_hash
            result.deep_merge! hash unless hash.nil?
          end

          result
        end

      # Create new instance of a class and call it
      def self.call locale = nil, key = nil
        new(locale, key).call
      end
    end
  end
end