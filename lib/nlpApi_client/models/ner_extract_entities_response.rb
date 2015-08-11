module NlpApiClient
  # 
  class NerExtractEntitiesResponse < BaseObject
    attr_accessor :entities
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of found entities
        :'entities' => :'entities'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'entities' => :'array[NerEntity]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'entities']
        if (value = attributes[:'entities']).is_a?(Array)
          @entities = value
        end
      end
      
    end
  end
end
