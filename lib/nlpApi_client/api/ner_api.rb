require "uri"

module NlpApiClient
  class NerApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Get entity annotations\n
    # Get the list of entity annotations given an input text.\nAn entity annotation is an entity associated with its position in the text.\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [NerExtractAnnotationsResponse]
    def self.nlp_ner_extract_annotations_get(lang, opts = {})
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling nlp_ner_extract_annotations_get" if lang.nil?
      

      # resource path
      path = "/nlp/ner/extract/annotations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'lang'] = lang
      query_params[:'input'] = opts[:'input'] if opts[:'input']
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded', '*/*']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["inputFile"] = opts[:'input_file'] if opts[:'input_file']

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = NerExtractAnnotationsResponse.new() and obj.build_from_hash(response)
    end

    # Get list of entities\n
    # Get the list of different entities given an input text.\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [NerExtractEntitiesResponse]
    def self.nlp_ner_extract_entities_get(lang, opts = {})
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling nlp_ner_extract_entities_get" if lang.nil?
      

      # resource path
      path = "/nlp/ner/extract/entities".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'lang'] = lang
      query_params[:'input'] = opts[:'input'] if opts[:'input']
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded', '*/*']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["inputFile"] = opts[:'input_file'] if opts[:'input_file']

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = NerExtractEntitiesResponse.new() and obj.build_from_hash(response)
    end

    # Supported Languages
    # List of languages in which NER is supported.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SupportedLanguagesResponse]
    def self.nlp_ner_supported_languages_get(opts = {})
      

      # resource path
      path = "/nlp/ner/supportedLanguages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SupportedLanguagesResponse.new() and obj.build_from_hash(response)
    end
  end
end
