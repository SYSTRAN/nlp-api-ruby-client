module NlpApiClient
  # 
  class NerEntityAnnotation < BaseObject
    attr_accessor :start, :_end, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Start offset
        :'start' => :'start',
        
        # End offset
        :'_end' => :'end',
        
        # Entity type
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'start' => :'int',
        :'_end' => :'int',
        :'type' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'start']
        @start = attributes[:'start']
      end
      
      if attributes[:'end']
        @_end = attributes[:'end']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
