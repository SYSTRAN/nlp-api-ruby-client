module NlpApiClient
  # 
  class MorphologyExtractPosResponse < BaseObject
    attr_accessor :parts_of_speech
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Part of speech per text elements
        :'parts_of_speech' => :'partsOfSpeech'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'parts_of_speech' => :'array[PosAnnotation]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'partsOfSpeech']
        if (value = attributes[:'partsOfSpeech']).is_a?(Array)
          @parts_of_speech = value
        end
      end
      
    end
  end
end
