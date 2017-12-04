# swagger_client

SwaggerClient - the Ruby gem for the Rule Group Server ssl policy API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 3.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::RuleGroupServerSslPolicyApi.new

authorization = "authorization_example" # String | Login token

web_application_name = "web_application_name_example" # String | Web Application Name of Rule Group Server ssl policy

rule_group_name = "rule_group_name_example" # String | Rule Group Name of Rule Group Server ssl policy

web_server_name = "web_server_name_example" # String | Web Server Name of Rule Group Server ssl policy

opts = { 
  fields: ["fields_example"] # Array<String> | 
}

begin
  #FETCH Information of Rule Group Server ssl policy
  api_instance.services_web_application_name_content_rules_rule_group_name_content_rule_servers_web_server_name_ssl_policy_get(authorization, web_application_name, rule_group_name, web_server_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RuleGroupServerSslPolicyApi->services_web_application_name_content_rules_rule_group_name_content_rule_servers_web_server_name_ssl_policy_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://&lt;WAF-IP&gt;/restapi/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::RuleGroupServerSslPolicyApi* | [**services_web_application_name_content_rules_rule_group_name_content_rule_servers_web_server_name_ssl_policy_get**](docs/RuleGroupServerSslPolicyApi.md#services_web_application_name_content_rules_rule_group_name_content_rule_servers_web_server_name_ssl_policy_get) | **GET** /services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers/{Web Server Name}/ssl-policy | FETCH Information of Rule Group Server ssl policy
*SwaggerClient::RuleGroupServerSslPolicyApi* | [**services_web_application_name_content_rules_rule_group_name_content_rule_servers_web_server_name_ssl_policy_put**](docs/RuleGroupServerSslPolicyApi.md#services_web_application_name_content_rules_rule_group_name_content_rule_servers_web_server_name_ssl_policy_put) | **PUT** /services/{Web Application Name}/content-rules/{Rule Group Name}/content-rule-servers/{Web Server Name}/ssl-policy  | EDIT Information of Rule Group Server ssl policy


## Documentation for Models

 - [SwaggerClient::RuleGroupServerSslPolicyBody](docs/RuleGroupServerSslPolicyBody.md)


## Documentation for Authorization

 All endpoints do not require authorization.
