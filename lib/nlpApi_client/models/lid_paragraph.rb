module NlpApiClient
  # 
  class LidParagraph < BaseObject
    attr_accessor :detected_languages, :source
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of detected languages
        :'detected_languages' => :'detectedLanguages',
        
        # Paragraph text
        :'source' => :'source'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'detected_languages' => :'array[LidDetectedLanguage]',
        :'source' => :'string'
        
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
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
    end
  end
end
