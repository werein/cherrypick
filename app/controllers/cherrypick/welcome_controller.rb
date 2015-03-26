require_dependency "cherrypick/application_controller"

module Cherrypick
  class WelcomeController < ApplicationController
    def index
      respond_with({ status: :ok })
    end
  end
end
