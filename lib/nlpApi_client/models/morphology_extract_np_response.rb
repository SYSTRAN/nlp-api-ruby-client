module NlpApiClient
  # 
  class MorphologyExtractNPResponse < BaseObject
    attr_accessor :chunks
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # List of extracted chunks
        :'chunks' => :'chunks'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'chunks' => :'array[ChunkAnnotation]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'chunks']
        if (value = attributes[:'chunks']).is_a?(Array)
          @chunks = value
        end
      end
      
    end
  end
end
