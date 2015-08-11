module NlpApiClient
  # 
  class SegmentationToken < BaseObject
    attr_accessor :source, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Token text
        :'source' => :'source',
        
        # Token type
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'type' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
