require 'factory_girl'

Before do
  Dir.glob(File.join(File.dirname(File.dirname(File.dirname(__FILE__))), 'test', 'factories' ,'*.rb')).each {|f| require f }  
  
  Factory.factories.keys.each {|factory| Factory(factory) }
end

Factory.factories.each do |name, factory|
  Given /^an? #{name} exists with an? (.*) of "([^"]*)"$/ do |attr, value|
    Factory(name, attr.gsub(' ', '_') => value)
  end
end
