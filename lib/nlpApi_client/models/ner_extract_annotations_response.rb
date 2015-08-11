module NlpApiClient
  # 
  class NerExtractAnnotationsResponse < BaseObject
    attr_accessor :annotations
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Entities per text segment
        :'annotations' => :'annotations'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'annotations' => :'array[NerSegmentAnnotation]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'annotations']
        if (value = attributes[:'annotations']).is_a?(Array)
          @annotations = value
        end
      end
      
    end
  end
end
