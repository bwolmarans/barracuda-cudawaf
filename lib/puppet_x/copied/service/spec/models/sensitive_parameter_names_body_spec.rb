=begin
#sensitive parameter names API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::SensitiveParameterNamesBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SensitiveParameterNamesBody' do
  before do
    # run before each test
    @instance = SwaggerClient::SensitiveParameterNamesBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SensitiveParameterNamesBody' do
    it 'should create an instance of SensitiveParameterNamesBody' do
      expect(@instance).to be_instance_of(SwaggerClient::SensitiveParameterNamesBody)
    end
  end
  describe 'test attribute "sensitive_parameter_names"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
