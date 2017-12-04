=begin
#Action Policy API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ActionPolicyBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActionPolicyBody' do
  before do
    # run before each test
    @instance = SwaggerClient::ActionPolicyBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActionPolicyBody' do
    it 'should create an instance of ActionPolicyBody' do
      expect(@instance).to be_instance_of(SwaggerClient::ActionPolicyBody)
    end
  end
  describe 'test attribute "action"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Protect and Log", "Protect with no Log", "Allow and Log", "None"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.action = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "deny_response"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Close Connection", "Send Response", "Temporary Redirect", "Permanent Redirect"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.deny_response = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "follow_up_action"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["None", "Block Client-IP", "Challenge with CAPTCHA"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.follow_up_action = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "follow_up_action_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "numeric_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "redirect_url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "response_page"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
