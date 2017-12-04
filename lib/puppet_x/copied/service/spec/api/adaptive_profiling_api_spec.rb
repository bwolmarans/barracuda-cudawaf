=begin
#adaptive profiling API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AdaptiveProfilingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AdaptiveProfilingApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AdaptiveProfilingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdaptiveProfilingApi' do
    it 'should create an instance of AdaptiveProfilingApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AdaptiveProfilingApi)
    end
  end

  # unit tests for services_web_application_name_adaptive_profiling_get
  # FETCH Information of adaptive profiling
  # 
  # @param authorization Login token
  # @param web_application_name Web Application Name of adaptive profiling
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields 
  # @return [nil]
  describe 'services_web_application_name_adaptive_profiling_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for services_web_application_name_adaptive_profiling_put
  # EDIT Information of adaptive profiling
  # 
  # @param authorization Login token
  # @param web_application_name Web Application Name of adaptive profiling
  # @param adaptive_profiling Body Parameter of adaptive profiling
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'services_web_application_name_adaptive_profiling_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end