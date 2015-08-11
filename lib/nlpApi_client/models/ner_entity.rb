module NlpApiClient
  # 
  class NerEntity < BaseObject
    attr_accessor :type, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Type
        :'type' => :'type',
        
        # Value
        :'value' => :'value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'type' => :'string',
        :'value' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'value']
        @value = attributes[:'value']
      end
      
    end
  end
end
