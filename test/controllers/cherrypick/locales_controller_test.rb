require 'test_helper'
require 'responders'

module Cherrypick
  LocalesController.class_eval do
    respond_to :json
  end
end

module Cherrypick
  class LocalesControllerTest < ActionController::TestCase
    before do
      @routes = Cherrypick::Engine.routes
    end
    
    it "should get index" do
      get :index, format: :json
      assert_response :success

      assigns(:locales).must_equal({"en" => {"hello" => "Hello world"}})
    end

    it "should get show" do
      get :show, iso_code: :en, format: :json
      assert_response :success

      assigns(:locale).must_equal({"hello" => "Hello world"})
    end
  end
end
