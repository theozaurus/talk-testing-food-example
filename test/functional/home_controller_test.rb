$:.unshift File.dirname(File.dirname(__FILE__))
require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  should_route :get, "/",   :controller => "home", :action => :index

end
