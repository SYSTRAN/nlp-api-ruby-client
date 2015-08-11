module NlpApiClient
  # 
  class LemmaAnnotation < BaseObject
    attr_accessor :text, :lemma, :start, :_end
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Text
        :'text' => :'text',
        
        # Lemma
        :'lemma' => :'lemma',
        
        # Start offset
        :'start' => :'start',
        
        # End offset
        :'_end' => :'end'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'text' => :'string',
        :'lemma' => :'string',
        :'start' => :'int',
        :'_end' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'text']
        @text = attributes[:'text']
      end
      
      if attributes[:'lemma']
        @lemma = attributes[:'lemma']
      end
      
      if attributes[:'start']
        @start = attributes[:'start']
      end
      
      if attributes[:'end']
        @_end = attributes[:'end']
      end
      
    end
  end
end
