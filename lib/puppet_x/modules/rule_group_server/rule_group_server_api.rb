# #Rule Group Server API
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
# OpenAPI spec version: 3.0.0
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 2.2.3

require 'uri'
require_relative '../../swagger_client/api_client'

module SwaggerClient
  class ContentRuleServerApi
    attr_accessor :api_client

    def initialize(url)
      @api_client = ApiClient.default(url)
    end

    # FETCH Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields
    # @return [nil]
    def content_rule_servers_get(authorization, web_application_name, rule_group_name, opts = {})
      data, status_code, headers = content_rule_servers_get_with_http_info(authorization, web_application_name, rule_group_name, opts)
      [data, status_code, headers]
    end

    # FETCH Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def content_rule_servers_get_with_http_info(authorization, web_application_name, rule_group_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRuleServerApi.content_rule_servers_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        raise ArgumentError, "Missing the required parameter 'authorization' when calling ContentRuleServerApi.content_rule_servers_get"
      end
      # verify the required parameter 'web_application_name' is set
      if @api_client.config.client_side_validation && web_application_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_application_name' when calling ContentRuleServerApi.content_rule_servers_get"
      end
      # verify the required parameter 'rule_group_name' is set
      if @api_client.config.client_side_validation && rule_group_name.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_name' when calling ContentRuleServerApi.content_rule_servers_get"
      end
      # resource path
      local_var_path = '/services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers'.sub('{' + 'Web Application Name' + '}', web_application_name.to_s).sub('{' + 'Rule Group Name' + '}', rule_group_name.to_s)

      # query parameters
      query_params = {}
      query_params[:fields] = @api_client.build_collection_param(opts[:fields], :multi) unless opts[:fields].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:Authorization] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRuleServerApi#content_rule_servers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # ADD Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param rule_group_server Body Parameter of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def content_rule_servers_post(authorization, web_application_name, rule_group_name, rule_group_server, opts = {})
      data, status_code, headers = content_rule_servers_post_with_http_info(authorization, web_application_name, rule_group_name, rule_group_server, opts)
      [data, status_code, headers]
    end

    # ADD Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param rule_group_server Body Parameter of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def content_rule_servers_post_with_http_info(authorization, web_application_name, rule_group_name, rule_group_server, _opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRuleServerApi.content_rule_servers_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        raise ArgumentError, "Missing the required parameter 'authorization' when calling ContentRuleServerApi.content_rule_servers_post"
      end
      # verify the required parameter 'web_application_name' is set
      if @api_client.config.client_side_validation && web_application_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_application_name' when calling ContentRuleServerApi.content_rule_servers_post"
      end
      # verify the required parameter 'rule_group_name' is set
      if @api_client.config.client_side_validation && rule_group_name.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_name' when calling ContentRuleServerApi.content_rule_servers_post"
      end
      # verify the required parameter 'rule_group_server' is set
      if @api_client.config.client_side_validation && rule_group_server.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_server' when calling ContentRuleServerApi.content_rule_servers_post"
      end
      # resource path
      local_var_path = '/services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers'.sub('{' + 'Web Application Name' + '}', web_application_name.to_s).sub('{' + 'Rule Group Name' + '}', rule_group_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:Authorization] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(rule_group_server)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRuleServerApi#content_rule_servers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # DELETE Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param web_server_name Web Server Name of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def content_rule_servers_web_server_name_delete(authorization, web_application_name, rule_group_name, web_server_name, opts = {})
      data, status_code, headers = content_rule_servers_web_server_name_delete_with_http_info(authorization, web_application_name, rule_group_name, web_server_name, opts)
      [data, status_code, headers]
    end

    # DELETE Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param web_server_name Web Server Name of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def content_rule_servers_web_server_name_delete_with_http_info(authorization, web_application_name, rule_group_name, web_server_name, _opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRuleServerApi.content_rule_servers_web_server_name_delete ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        raise ArgumentError, "Missing the required parameter 'authorization' when calling ContentRuleServerApi.content_rule_servers_web_server_name_delete"
      end
      # verify the required parameter 'web_application_name' is set
      if @api_client.config.client_side_validation && web_application_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_application_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_delete"
      end
      # verify the required parameter 'rule_group_name' is set
      if @api_client.config.client_side_validation && rule_group_name.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_delete"
      end
      # verify the required parameter 'web_server_name' is set
      if @api_client.config.client_side_validation && web_server_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_server_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_delete"
      end
      # resource path
      local_var_path = '/services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers/{Web Server Name}'.sub('{' + 'Web Application Name' + '}', web_application_name.to_s).sub('{' + 'Rule Group Name' + '}', rule_group_name.to_s).sub('{' + 'Web Server Name' + '}', web_server_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:Authorization] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRuleServerApi#content_rule_servers_web_server_name_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # FETCH Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param web_server_name Web Server Name of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields
    # @return [nil]
    def content_rule_servers_web_server_name_get(authorization, web_application_name, rule_group_name, web_server_name, opts = {})
      data, status_code, headers = content_rule_servers_web_server_name_get_with_http_info(authorization, web_application_name, rule_group_name, web_server_name, opts)
      [data, status_code, headers]
    end

    # FETCH Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param web_server_name Web Server Name of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def content_rule_servers_web_server_name_get_with_http_info(authorization, web_application_name, rule_group_name, web_server_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRuleServerApi.content_rule_servers_web_server_name_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        raise ArgumentError, "Missing the required parameter 'authorization' when calling ContentRuleServerApi.content_rule_servers_web_server_name_get"
      end
      # verify the required parameter 'web_application_name' is set
      if @api_client.config.client_side_validation && web_application_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_application_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_get"
      end
      # verify the required parameter 'rule_group_name' is set
      if @api_client.config.client_side_validation && rule_group_name.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_get"
      end
      # verify the required parameter 'web_server_name' is set
      if @api_client.config.client_side_validation && web_server_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_server_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_get"
      end
      # resource path
      local_var_path = '/services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers/{Web Server Name}'.sub('{' + 'Web Application Name' + '}', web_application_name.to_s).sub('{' + 'Rule Group Name' + '}', rule_group_name.to_s).sub('{' + 'Web Server Name' + '}', web_server_name.to_s)

      # query parameters
      query_params = {}
      query_params[:fields] = @api_client.build_collection_param(opts[:fields], :multi) unless opts[:fields].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:Authorization] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRuleServerApi#content_rule_servers_web_server_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # EDIT Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param web_server_name Web Server Name of Rule Group Server
    # @param rule_group_server Body Parameter of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def content_rule_servers_web_server_name_put(authorization, web_application_name, rule_group_name, web_server_name, rule_group_server, opts = {})
      data, status_code, headers = content_rule_servers_web_server_name_put_with_http_info(authorization, web_application_name, rule_group_name, web_server_name, rule_group_server, opts)
      [data, status_code, headers]
    end

    # EDIT Information of Rule Group Server
    #
    # @param authorization Login token
    # @param web_application_name Web Application Name of Rule Group Server
    # @param rule_group_name Rule Group Name of Rule Group Server
    # @param web_server_name Web Server Name of Rule Group Server
    # @param rule_group_server Body Parameter of Rule Group Server
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def content_rule_servers_web_server_name_put_with_http_info(authorization, web_application_name, rule_group_name, web_server_name, rule_group_server, _opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRuleServerApi.content_rule_servers_web_server_name_put ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        raise ArgumentError, "Missing the required parameter 'authorization' when calling ContentRuleServerApi.content_rule_servers_web_server_name_put"
      end
      # verify the required parameter 'web_application_name' is set
      if @api_client.config.client_side_validation && web_application_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_application_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_put"
      end
      # verify the required parameter 'rule_group_name' is set
      if @api_client.config.client_side_validation && rule_group_name.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_put"
      end
      # verify the required parameter 'web_server_name' is set
      if @api_client.config.client_side_validation && web_server_name.nil?
        raise ArgumentError, "Missing the required parameter 'web_server_name' when calling ContentRuleServerApi.content_rule_servers_web_server_name_put"
      end
      # verify the required parameter 'rule_group_server' is set
      if @api_client.config.client_side_validation && rule_group_server.nil?
        raise ArgumentError, "Missing the required parameter 'rule_group_server' when calling ContentRuleServerApi.content_rule_servers_web_server_name_put"
      end
      # resource path
      local_var_path = '/services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers/{Web Server Name}'.sub('{' + 'Web Application Name' + '}', web_application_name.to_s).sub('{' + 'Rule Group Name' + '}', rule_group_name.to_s).sub('{' + 'Web Server Name' + '}', web_server_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:Authorization] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(rule_group_server)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRuleServerApi#content_rule_servers_web_server_name_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
