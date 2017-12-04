=begin
#Global ACL API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class GlobalACLBody
    # Action
    attr_accessor :action

    # Comments
    attr_accessor :comments

    # Deny Response
    attr_accessor :deny_response

    # Enable URL ACL
    attr_accessor :enable

    # Extended Match
    attr_accessor :extended_match

    # Extended Match Sequence
    attr_accessor :extended_match_sequence

    # Follow Up Action
    attr_accessor :follow_up_action

    # Follow Up Action Time
    attr_accessor :follow_up_action_time

    # URL ACL Name
    attr_accessor :name

    # Redirect URL
    attr_accessor :redirect_url

    # Response Page
    attr_accessor :response_page

    # URL Match
    attr_accessor :url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action' => :'action',
        :'comments' => :'comments',
        :'deny_response' => :'deny-response',
        :'enable' => :'enable',
        :'extended_match' => :'extended-match',
        :'extended_match_sequence' => :'extended-match-sequence',
        :'follow_up_action' => :'follow-up-action',
        :'follow_up_action_time' => :'follow-up-action-time',
        :'name' => :'name',
        :'redirect_url' => :'redirect-url',
        :'response_page' => :'response-page',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'action' => :'String',
        :'comments' => :'String',
        :'deny_response' => :'String',
        :'enable' => :'String',
        :'extended_match' => :'String',
        :'extended_match_sequence' => :'Integer',
        :'follow_up_action' => :'String',
        :'follow_up_action_time' => :'Integer',
        :'name' => :'String',
        :'redirect_url' => :'String',
        :'response_page' => :'String',
        :'url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      else
        self.action = "Process"
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      else
        self.comments = ""
      end

      if attributes.has_key?(:'deny-response')
        self.deny_response = attributes[:'deny-response']
      else
        self.deny_response = "Response Page"
      end

      if attributes.has_key?(:'enable')
        self.enable = attributes[:'enable']
      else
        self.enable = "Yes"
      end

      if attributes.has_key?(:'extended-match')
        self.extended_match = attributes[:'extended-match']
      else
        self.extended_match = "*"
      end

      if attributes.has_key?(:'extended-match-sequence')
        self.extended_match_sequence = attributes[:'extended-match-sequence']
      end

      if attributes.has_key?(:'follow-up-action')
        self.follow_up_action = attributes[:'follow-up-action']
      else
        self.follow_up_action = "None"
      end

      if attributes.has_key?(:'follow-up-action-time')
        self.follow_up_action_time = attributes[:'follow-up-action-time']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = ""
      end

      if attributes.has_key?(:'redirect-url')
        self.redirect_url = attributes[:'redirect-url']
      else
        self.redirect_url = ""
      end

      if attributes.has_key?(:'response-page')
        self.response_page = attributes[:'response-page']
      else
        self.response_page = "default"
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      else
        self.url = "/*"
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@extended_match_sequence.nil? && @extended_match_sequence < 0
        invalid_properties.push("invalid value for 'extended_match_sequence', must be greater than or equal to 0.")
      end

      if !@follow_up_action_time.nil? && @follow_up_action_time < 1
        invalid_properties.push("invalid value for 'follow_up_action_time', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      action_validator = EnumAttributeValidator.new('String', ["Process", "Allow", "Allow and Log", "Deny and Log", "Deny with no Log", "Temporary Redirect", "Permanent Redirect"])
      return false unless action_validator.valid?(@action)
      deny_response_validator = EnumAttributeValidator.new('String', ["Reset", "Response Page", "Temporary Redirect", "Permanent Redirect"])
      return false unless deny_response_validator.valid?(@deny_response)
      enable_validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      return false unless enable_validator.valid?(@enable)
      return false if !@extended_match_sequence.nil? && @extended_match_sequence < 0
      follow_up_action_validator = EnumAttributeValidator.new('String', ["None", "Block Client-IP", "Challenge with CAPTCHA"])
      return false unless follow_up_action_validator.valid?(@follow_up_action)
      return false if !@follow_up_action_time.nil? && @follow_up_action_time < 1
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["Process", "Allow", "Allow and Log", "Deny and Log", "Deny with no Log", "Temporary Redirect", "Permanent Redirect"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for 'action', must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deny_response Object to be assigned
    def deny_response=(deny_response)
      validator = EnumAttributeValidator.new('String', ["Reset", "Response Page", "Temporary Redirect", "Permanent Redirect"])
      unless validator.valid?(deny_response)
        fail ArgumentError, "invalid value for 'deny_response', must be one of #{validator.allowable_values}."
      end
      @deny_response = deny_response
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enable Object to be assigned
    def enable=(enable)
      validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      unless validator.valid?(enable)
        fail ArgumentError, "invalid value for 'enable', must be one of #{validator.allowable_values}."
      end
      @enable = enable
    end

    # Custom attribute writer method with validation
    # @param [Object] extended_match_sequence Value to be assigned
    def extended_match_sequence=(extended_match_sequence)

      if !extended_match_sequence.nil? && extended_match_sequence < 0
        fail ArgumentError, "invalid value for 'extended_match_sequence', must be greater than or equal to 0."
      end

      @extended_match_sequence = extended_match_sequence
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] follow_up_action Object to be assigned
    def follow_up_action=(follow_up_action)
      validator = EnumAttributeValidator.new('String', ["None", "Block Client-IP", "Challenge with CAPTCHA"])
      unless validator.valid?(follow_up_action)
        fail ArgumentError, "invalid value for 'follow_up_action', must be one of #{validator.allowable_values}."
      end
      @follow_up_action = follow_up_action
    end

    # Custom attribute writer method with validation
    # @param [Object] follow_up_action_time Value to be assigned
    def follow_up_action_time=(follow_up_action_time)

      if !follow_up_action_time.nil? && follow_up_action_time < 1
        fail ArgumentError, "invalid value for 'follow_up_action_time', must be greater than or equal to 1."
      end

      @follow_up_action_time = follow_up_action_time
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action == o.action &&
          comments == o.comments &&
          deny_response == o.deny_response &&
          enable == o.enable &&
          extended_match == o.extended_match &&
          extended_match_sequence == o.extended_match_sequence &&
          follow_up_action == o.follow_up_action &&
          follow_up_action_time == o.follow_up_action_time &&
          name == o.name &&
          redirect_url == o.redirect_url &&
          response_page == o.response_page &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, comments, deny_response, enable, extended_match, extended_match_sequence, follow_up_action, follow_up_action_time, name, redirect_url, response_page, url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end