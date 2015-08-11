module NlpApiClient
  # 
  class MorphologyExtractLemmaResponse < BaseObject
    attr_accessor :lemmas
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Lemma text elements
        :'lemmas' => :'lemmas'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'lemmas' => :'array[LemmaAnnotation]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'lemmas']
        if (value = attributes[:'lemmas']).is_a?(Array)
          @lemmas = value
        end
      end
      
    end
  end
end
