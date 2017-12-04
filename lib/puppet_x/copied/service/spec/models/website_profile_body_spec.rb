=begin
#website profile API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::WebsiteProfileBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebsiteProfileBody' do
  before do
    # run before each test
    @instance = SwaggerClient::WebsiteProfileBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebsiteProfileBody' do
    it 'should create an instance of WebsiteProfileBody' do
      expect(@instance).to be_instance_of(SwaggerClient::WebsiteProfileBody)
    end
  end
  describe 'test attribute "use_profile"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["No", "Yes"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.use_profile = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "allowed_domains"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "mode"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Learning", "Passive", "Active"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.mode = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "include_url_patterns"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "strict_profile_check"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["No", "Yes"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.strict_profile_check = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "exclude_url_patterns"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
