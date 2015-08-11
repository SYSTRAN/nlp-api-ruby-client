module NlpApiClient
  # 
  class LidDetectedLanguage < BaseObject
    attr_accessor :lang, :confidence
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Language
        :'lang' => :'lang',
        
        # Confidence
        :'confidence' => :'confidence'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'lang' => :'string',
        :'confidence' => :'double'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'lang']
        @lang = attributes[:'lang']
      end
      
      if attributes[:'confidence']
        @confidence = attributes[:'confidence']
      end
      
    end
  end
end
