# Swagger common files
require_relative 'nlpApi_client/monkey'
require_relative 'nlpApi_client/swagger'
require_relative 'nlpApi_client/swagger/configuration'
require_relative 'nlpApi_client/swagger/request'
require_relative 'nlpApi_client/swagger/response'
require_relative 'nlpApi_client/swagger/version'

# Models
require_relative 'nlpApi_client/models/base_object'
require_relative 'nlpApi_client/models/ner_entity'
require_relative 'nlpApi_client/models/ner_extract_entities_response'
require_relative 'nlpApi_client/models/ner_entity_annotation'
require_relative 'nlpApi_client/models/ner_segment_annotation'
require_relative 'nlpApi_client/models/ner_extract_annotations_response'
require_relative 'nlpApi_client/models/lid_detected_language'
require_relative 'nlpApi_client/models/lid_document_response'
require_relative 'nlpApi_client/models/lid_paragraph'
require_relative 'nlpApi_client/models/lid_paragraph_response'
require_relative 'nlpApi_client/models/segmentation_segment_response'
require_relative 'nlpApi_client/models/segmentation_token'
require_relative 'nlpApi_client/models/segmentation_tokenized_segment'
require_relative 'nlpApi_client/models/segmentation_segment_and_tokenize_response'
require_relative 'nlpApi_client/models/segmentation_tokenize_response'
require_relative 'nlpApi_client/models/profile'
require_relative 'nlpApi_client/models/supported_language'
require_relative 'nlpApi_client/models/supported_languages_response'
require_relative 'nlpApi_client/models/supported_language_pair'
require_relative 'nlpApi_client/models/transcription_supported_languages_response'
require_relative 'nlpApi_client/models/pos_annotation'
require_relative 'nlpApi_client/models/morphology_extract_pos_response'
require_relative 'nlpApi_client/models/lemma_annotation'
require_relative 'nlpApi_client/models/morphology_extract_lemma_response'
require_relative 'nlpApi_client/models/chunk_annotation'
require_relative 'nlpApi_client/models/morphology_extract_np_response'

# APIs
require_relative 'nlpApi_client/api/lid_api'
require_relative 'nlpApi_client/api/morphology_api'
require_relative 'nlpApi_client/api/segmentation_api'
require_relative 'nlpApi_client/api/transcription_api'
require_relative 'nlpApi_client/api/ner_api'

module NlpApiClient
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
