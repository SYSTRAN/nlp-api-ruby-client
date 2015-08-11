module NlpApiClient
  # 
  class LidDocumentResponse < BaseObject
    attr_accessor :detected_languages
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of detected languages
        :'detected_languages' => :'detectedLanguages'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'detected_languages' => :'array[LidDetectedLanguage]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'detectedLanguages']
        if (value = attributes[:'detectedLanguages']).is_a?(Array)
          @detected_languages = value
        end
      end
      
    end
  end
end
