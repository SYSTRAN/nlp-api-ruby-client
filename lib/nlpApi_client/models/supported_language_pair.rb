module NlpApiClient
  # 
  class SupportedLanguagePair < BaseObject
    attr_accessor :source, :target, :profiles
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Source language code
        :'source' => :'source',
        
        # Target language code
        :'target' => :'target',
        
        # Array of profiles
        :'profiles' => :'profiles'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'target' => :'string',
        :'profiles' => :'array[Profile]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
      if attributes[:'profiles']
        if (value = attributes[:'profiles']).is_a?(Array)
          @profiles = value
        end
      end
      
    end
  end
end
