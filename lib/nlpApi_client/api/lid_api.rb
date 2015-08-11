require "uri"

module NlpApiClient
  class LidApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Document language detection\n
    # Global language detection on document.\n
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [LidDocumentResponse]
    def self.nlp_lid_detect_language_document_get(opts = {})
      

      # resource path
      path = "/nlp/lid/detectLanguage/document".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'input'] = opts[:'input'] if opts[:'input']
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
      obj = LidDocumentResponse.new() and obj.build_from_hash(response)
    end

    # Paragraph language detection\n
    # Language detection for each paragraph in a document.\n
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [LidParagraphResponse]
    def self.nlp_lid_detect_language_paragraph_get(opts = {})
      

      # resource path
      path = "/nlp/lid/detectLanguage/paragraph".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'input'] = opts[:'input'] if opts[:'input']
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
      obj = LidParagraphResponse.new() and obj.build_from_hash(response)
    end
  end
end
