module NlpApiClient
  # 
  class SegmentationTokenizedSegment < BaseObject
    attr_accessor :source, :tokens
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Segment
        :'source' => :'source',
        
        # Array of tokens
        :'tokens' => :'tokens'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'tokens' => :'array[SegmentationToken]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'tokens']
        if (value = attributes[:'tokens']).is_a?(Array)
          @tokens = value
        end
      end
      
    end
  end
end
