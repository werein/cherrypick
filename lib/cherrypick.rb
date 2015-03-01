require "cherrypick/engine"
require "cherrypick/services/locales"

module Cherrypick

  # Define parent controller
  mattr_accessor :parent_controller
  @@parent_controller = "ApplicationController"
end
