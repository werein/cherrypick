require "cherrypick/engine"

module Cherrypick

  # Define parent controller
  mattr_accessor :parent_controller
  @@parent_controller = "ApplicationController"
end
