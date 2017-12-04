=begin
#ssl security API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SslSecurityApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SslSecurityApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SslSecurityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SslSecurityApi' do
    it 'should create an instance of SslSecurityApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SslSecurityApi)
    end
  end

  # unit tests for services_web_application_name_ssl_security_get
  # FETCH Information of ssl security
  # 
  # @param authorization Login token
  # @param web_application_name Web Application Name of ssl security
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields 
  # @return [nil]
  describe 'services_web_application_name_ssl_security_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for services_web_application_name_ssl_security_put
  # EDIT Information of ssl security
  # 
  # @param authorization Login token
  # @param web_application_name Web Application Name of ssl security
  # @param ssl_security Body Parameter of ssl security
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'services_web_application_name_ssl_security_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end