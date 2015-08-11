module NlpApiClient
  # 
  class NerSegmentAnnotation < BaseObject
    attr_accessor :source, :entities
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Text segment
        :'source' => :'source',
        
        # Array of found entities
        :'entities' => :'entities'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'entities' => :'array[NerEntityAnnotation]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'entities']
        if (value = attributes[:'entities']).is_a?(Array)
          @entities = value
        end
      end
      
    end
  end
end
