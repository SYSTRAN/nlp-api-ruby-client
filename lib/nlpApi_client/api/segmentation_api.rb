require "uri"

module NlpApiClient
  class SegmentationApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Segment\n
    # Segment an input text.\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SegmentationSegmentResponse]
    def self.nlp_segmentation_segment_get(lang, opts = {})
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling nlp_segmentation_segment_get" if lang.nil?
      

      # resource path
      path = "/nlp/segmentation/segment".sub('{format}','json')

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
      obj = SegmentationSegmentResponse.new() and obj.build_from_hash(response)
    end

    # Segment and tokenize\n
    # Segment an input text, then tokenize each segment.\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SegmentationSegmentAndTokenizeResponse]
    def self.nlp_segmentation_segment_and_tokenize_get(lang, opts = {})
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling nlp_segmentation_segment_and_tokenize_get" if lang.nil?
      

      # resource path
      path = "/nlp/segmentation/segmentAndTokenize".sub('{format}','json')

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
      obj = SegmentationSegmentAndTokenizeResponse.new() and obj.build_from_hash(response)
    end

    # Supported Languages
    # List of languages in which Segmentation is supported.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SupportedLanguagesResponse]
    def self.nlp_segmentation_supported_languages_get(opts = {})
      

      # resource path
      path = "/nlp/segmentation/supportedLanguages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
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

    # Tokenize\n
    # Tokenize an input text.\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SegmentationTokenizeResponse]
    def self.nlp_segmentation_tokenize_get(lang, opts = {})
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling nlp_segmentation_tokenize_get" if lang.nil?
      

      # resource path
      path = "/nlp/segmentation/tokenize".sub('{format}','json')

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
      obj = SegmentationTokenizeResponse.new() and obj.build_from_hash(response)
    end
  end
end
