module NlpApiClient
  # 
  class Profile < BaseObject
    attr_accessor :id, :private
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Profile identifier
        :'id' => :'id',
        
        # Public or private profile
        :'private' => :'private'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'private' => :'boolean'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'private']
        @private = attributes[:'private']
      end
      
    end
  end
end
