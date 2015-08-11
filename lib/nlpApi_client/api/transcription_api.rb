require "uri"

module NlpApiClient
  class TranscriptionApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Supported Languages
    # List of languages pairs in which Transcription is supported. This list can be limited to a specific source language or target language.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :source Source Language code ([details](#description_langage_code_values))
    # @option opts [string] :target Target Language code ([details](#description_langage_code_values))
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [TranscriptionSupportedLanguagesResponse]
    def self.nlp_transcription_supported_languages_get(opts = {})
      

      # resource path
      path = "/nlp/transcription/supportedLanguages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'source'] = opts[:'source'] if opts[:'source']
      query_params[:'target'] = opts[:'target'] if opts[:'target']
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
      obj = TranscriptionSupportedLanguagesResponse.new() and obj.build_from_hash(response)
    end

    # Transcribe
    # Transcribe text from a source language to a target language.\n
    # @param source Source Language code ([details](#description_langage_code_values))
    # @param target Target Language code ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :input input text\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [file]
    def self.nlp_transcription_transcribe_get(source, target, opts = {})
      
      # verify the required parameter 'source' is set
      raise "Missing the required parameter 'source' when calling nlp_transcription_transcribe_get" if source.nil?
      
      # verify the required parameter 'target' is set
      raise "Missing the required parameter 'target' when calling nlp_transcription_transcribe_get" if target.nil?
      

      # resource path
      path = "/nlp/transcription/transcribe".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'source'] = source
      query_params[:'target'] = target
      query_params[:'input'] = opts[:'input'] if opts[:'input']
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
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
      response.force_encoding('utf-8')
    end
  end
end
