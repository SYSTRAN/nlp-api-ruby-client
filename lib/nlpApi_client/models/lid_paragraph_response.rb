module NlpApiClient
  # 
  class LidParagraphResponse < BaseObject
    attr_accessor :paragraphs
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of paragraphs
        :'paragraphs' => :'paragraphs'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'paragraphs' => :'array[LidParagraph]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'paragraphs']
        if (value = attributes[:'paragraphs']).is_a?(Array)
          @paragraphs = value
        end
      end
      
    end
  end
end
