=begin
#Security Policy parameter protection API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class SecurityPolicyParameterProtectionBody
    # Enable Parameter Protection
    attr_accessor :enable

    # File Upload Mime Types
    attr_accessor :file_upload_mime_types

    # Maximum Parameter Value Length
    attr_accessor :maximum_parameter_value_length

    # Exception Patterns
    attr_accessor :exception_patterns

    # Denied Metacharacters
    attr_accessor :denied_metacharacters

    # Custom Blocked Attack Types
    attr_accessor :custom_blocked_attack_types

    # Maximum Instances
    attr_accessor :maximum_instances

    # Base64 Decode Parameter Value
    attr_accessor :base64_decode_parameter_value

    # Ignore Parameters
    attr_accessor :ignore_parameters

    # Blocked Attack Types
    attr_accessor :blocked_attack_types

    # Maximum Upload File Size
    attr_accessor :maximum_upload_file_size

    # File Upload Extensions
    attr_accessor :file_upload_extensions

    # Validate Parameter Name
    attr_accessor :validate_parameter_name

    # Allowed File Upload Type
    attr_accessor :allowed_file_upload_type

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
        :'enable' => :'enable',
        :'file_upload_mime_types' => :'file-upload-mime-types',
        :'maximum_parameter_value_length' => :'maximum-parameter-value-length',
        :'exception_patterns' => :'exception-patterns',
        :'denied_metacharacters' => :'denied-metacharacters',
        :'custom_blocked_attack_types' => :'custom-blocked-attack-types',
        :'maximum_instances' => :'maximum-instances',
        :'base64_decode_parameter_value' => :'base64-decode-parameter-value',
        :'ignore_parameters' => :'ignore-parameters',
        :'blocked_attack_types' => :'blocked-attack-types',
        :'maximum_upload_file_size' => :'maximum-upload-file-size',
        :'file_upload_extensions' => :'file-upload-extensions',
        :'validate_parameter_name' => :'validate-parameter-name',
        :'allowed_file_upload_type' => :'allowed-file-upload-type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'enable' => :'String',
        :'file_upload_mime_types' => :'String',
        :'maximum_parameter_value_length' => :'Integer',
        :'exception_patterns' => :'String',
        :'denied_metacharacters' => :'String',
        :'custom_blocked_attack_types' => :'String',
        :'maximum_instances' => :'Integer',
        :'base64_decode_parameter_value' => :'String',
        :'ignore_parameters' => :'String',
        :'blocked_attack_types' => :'String',
        :'maximum_upload_file_size' => :'Integer',
        :'file_upload_extensions' => :'String',
        :'validate_parameter_name' => :'String',
        :'allowed_file_upload_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'enable')
        self.enable = attributes[:'enable']
      else
        self.enable = "Yes"
      end

      if attributes.has_key?(:'file-upload-mime-types')
        self.file_upload_mime_types = attributes[:'file-upload-mime-types']
      end

      if attributes.has_key?(:'maximum-parameter-value-length')
        self.maximum_parameter_value_length = attributes[:'maximum-parameter-value-length']
      end

      if attributes.has_key?(:'exception-patterns')
        self.exception_patterns = attributes[:'exception-patterns']
      end

      if attributes.has_key?(:'denied-metacharacters')
        self.denied_metacharacters = attributes[:'denied-metacharacters']
      else
        self.denied_metacharacters = "%00%01%04%1b%08%5c%7f"
      end

      if attributes.has_key?(:'custom-blocked-attack-types')
        self.custom_blocked_attack_types = attributes[:'custom-blocked-attack-types']
      end

      if attributes.has_key?(:'maximum-instances')
        self.maximum_instances = attributes[:'maximum-instances']
      end

      if attributes.has_key?(:'base64-decode-parameter-value')
        self.base64_decode_parameter_value = attributes[:'base64-decode-parameter-value']
      else
        self.base64_decode_parameter_value = "No"
      end

      if attributes.has_key?(:'ignore-parameters')
        self.ignore_parameters = attributes[:'ignore-parameters']
      end

      if attributes.has_key?(:'blocked-attack-types')
        self.blocked_attack_types = attributes[:'blocked-attack-types']
      end

      if attributes.has_key?(:'maximum-upload-file-size')
        self.maximum_upload_file_size = attributes[:'maximum-upload-file-size']
      end

      if attributes.has_key?(:'file-upload-extensions')
        self.file_upload_extensions = attributes[:'file-upload-extensions']
      end

      if attributes.has_key?(:'validate-parameter-name')
        self.validate_parameter_name = attributes[:'validate-parameter-name']
      else
        self.validate_parameter_name = "No"
      end

      if attributes.has_key?(:'allowed-file-upload-type')
        self.allowed_file_upload_type = attributes[:'allowed-file-upload-type']
      else
        self.allowed_file_upload_type = "Extensions"
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@maximum_parameter_value_length.nil? && @maximum_parameter_value_length < 0
        invalid_properties.push("invalid value for 'maximum_parameter_value_length', must be greater than or equal to 0.")
      end

      if !@maximum_instances.nil? && @maximum_instances < 0
        invalid_properties.push("invalid value for 'maximum_instances', must be greater than or equal to 0.")
      end

      if !@maximum_upload_file_size.nil? && @maximum_upload_file_size < 0
        invalid_properties.push("invalid value for 'maximum_upload_file_size', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      enable_validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      return false unless enable_validator.valid?(@enable)
      return false if !@maximum_parameter_value_length.nil? && @maximum_parameter_value_length < 0
      return false if !@maximum_instances.nil? && @maximum_instances < 0
      base64_decode_parameter_value_validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      return false unless base64_decode_parameter_value_validator.valid?(@base64_decode_parameter_value)
      return false if !@maximum_upload_file_size.nil? && @maximum_upload_file_size < 0
      validate_parameter_name_validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      return false unless validate_parameter_name_validator.valid?(@validate_parameter_name)
      allowed_file_upload_type_validator = EnumAttributeValidator.new('String', ["Extensions", "Mime Types"])
      return false unless allowed_file_upload_type_validator.valid?(@allowed_file_upload_type)
      return true
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
    # @param [Object] maximum_parameter_value_length Value to be assigned
    def maximum_parameter_value_length=(maximum_parameter_value_length)

      if !maximum_parameter_value_length.nil? && maximum_parameter_value_length < 0
        fail ArgumentError, "invalid value for 'maximum_parameter_value_length', must be greater than or equal to 0."
      end

      @maximum_parameter_value_length = maximum_parameter_value_length
    end

    # Custom attribute writer method with validation
    # @param [Object] maximum_instances Value to be assigned
    def maximum_instances=(maximum_instances)

      if !maximum_instances.nil? && maximum_instances < 0
        fail ArgumentError, "invalid value for 'maximum_instances', must be greater than or equal to 0."
      end

      @maximum_instances = maximum_instances
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] base64_decode_parameter_value Object to be assigned
    def base64_decode_parameter_value=(base64_decode_parameter_value)
      validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      unless validator.valid?(base64_decode_parameter_value)
        fail ArgumentError, "invalid value for 'base64_decode_parameter_value', must be one of #{validator.allowable_values}."
      end
      @base64_decode_parameter_value = base64_decode_parameter_value
    end

    # Custom attribute writer method with validation
    # @param [Object] maximum_upload_file_size Value to be assigned
    def maximum_upload_file_size=(maximum_upload_file_size)

      if !maximum_upload_file_size.nil? && maximum_upload_file_size < 0
        fail ArgumentError, "invalid value for 'maximum_upload_file_size', must be greater than or equal to 0."
      end

      @maximum_upload_file_size = maximum_upload_file_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] validate_parameter_name Object to be assigned
    def validate_parameter_name=(validate_parameter_name)
      validator = EnumAttributeValidator.new('String', ["Yes", "No"])
      unless validator.valid?(validate_parameter_name)
        fail ArgumentError, "invalid value for 'validate_parameter_name', must be one of #{validator.allowable_values}."
      end
      @validate_parameter_name = validate_parameter_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_file_upload_type Object to be assigned
    def allowed_file_upload_type=(allowed_file_upload_type)
      validator = EnumAttributeValidator.new('String', ["Extensions", "Mime Types"])
      unless validator.valid?(allowed_file_upload_type)
        fail ArgumentError, "invalid value for 'allowed_file_upload_type', must be one of #{validator.allowable_values}."
      end
      @allowed_file_upload_type = allowed_file_upload_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enable == o.enable &&
          file_upload_mime_types == o.file_upload_mime_types &&
          maximum_parameter_value_length == o.maximum_parameter_value_length &&
          exception_patterns == o.exception_patterns &&
          denied_metacharacters == o.denied_metacharacters &&
          custom_blocked_attack_types == o.custom_blocked_attack_types &&
          maximum_instances == o.maximum_instances &&
          base64_decode_parameter_value == o.base64_decode_parameter_value &&
          ignore_parameters == o.ignore_parameters &&
          blocked_attack_types == o.blocked_attack_types &&
          maximum_upload_file_size == o.maximum_upload_file_size &&
          file_upload_extensions == o.file_upload_extensions &&
          validate_parameter_name == o.validate_parameter_name &&
          allowed_file_upload_type == o.allowed_file_upload_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [enable, file_upload_mime_types, maximum_parameter_value_length, exception_patterns, denied_metacharacters, custom_blocked_attack_types, maximum_instances, base64_decode_parameter_value, ignore_parameters, blocked_attack_types, maximum_upload_file_size, file_upload_extensions, validate_parameter_name, allowed_file_upload_type].hash
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