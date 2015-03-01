require_dependency "cherrypick/application_controller"

module Cherrypick
  class LocalesController < ApplicationController
    def index
      @locales = Services::Locales.call
      respond_with @locales
    end

    def show
      @locale = Services::Locales.call iso_code
      respond_with @locale
    end

    private
      def iso_code
        params[:iso_code]
      end
  end
end
