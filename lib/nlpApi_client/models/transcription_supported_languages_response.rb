module NlpApiClient
  # 
  class TranscriptionSupportedLanguagesResponse < BaseObject
    attr_accessor :language_pairs
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of supported languages pairs
        :'language_pairs' => :'languagePairs'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'language_pairs' => :'array[SupportedLanguagePair]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'languagePairs']
        if (value = attributes[:'languagePairs']).is_a?(Array)
          @language_pairs = value
        end
      end
      
    end
  end
end
