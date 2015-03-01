require 'test_helper'
require 'responders'

module Cherrypick
  WelcomeController.class_eval do
    respond_to :json
  end
end

module Cherrypick
  class WelcomeControllerTest < ActionController::TestCase
    setup do
      @routes = Cherrypick::Engine.routes
    end

    test "should get index" do
      get :index, format: :json
      assert_response :success
    end
  end
end
