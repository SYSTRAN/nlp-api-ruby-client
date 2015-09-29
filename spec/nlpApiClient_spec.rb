require 'rspec'
require_relative '../lib/nlpApiClient'

describe "NlpApiClient" do
  before :all do
    NlpApiClient::Swagger.configure do |configuration|
      configuration.host = "https://platform.systran.net:8904"
      if File.exists?(("./apiKey.txt"))
        key = File.read("./apiKey.txt", :encoding => 'UTF-8')
        if key.length > 0
          configuration.key = key
        else
          puts "The key.txt file is empty"
        end
      else
        puts"The key.txt file doesn't exists"
      end

    end

  end
  describe "Configuration" do
    it "assures the user has a correct client configuration" do
      expect(NlpApiClient::Swagger.configuration.key.length).to be_between(10, 100)
    end
  end
  describe "LidApi" do
    it "does Global language detection on document." do
      result = NlpApiClient::LidApi.nlp_lid_detect_language_document_get( {:input =>  "The quick brown fox jumps over the lazy dog"})
      expect(result.detected_languages).not_to be_empty
    end

    it "does Global language detection on document from a file." do
      result = NlpApiClient::LidApi.nlp_lid_detect_language_document_get( {:input_file =>  File.open("./spec/sample.txt","r")})
      expect(result.detected_languages).not_to be_empty
    end

    it "does Language detection for each paragraph in a document." do
      result = NlpApiClient::LidApi.nlp_lid_detect_language_paragraph_get( {:input =>  "The quick brown fox jumps over the lazy dog"})
      expect(result.paragraphs[0].detected_languages).not_to be_empty
    end
  end

  describe "NerApi" do
    it "Gets the list of different entities given an input text." do
      result = NlpApiClient::NerApi.nlp_ner_extract_entities_get( "en", {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.entities).not_to be_empty
    end
    it "Gets the list of entity annotations given an input text." do
      result = NlpApiClient::NerApi.nlp_ner_extract_annotations_get( "en", {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.annotations).not_to be_empty
    end
    it "Gets the list  of languages in which NER is supported." do
      result = NlpApiClient::NerApi.nlp_ner_supported_languages_get
      expect(result.languages).not_to be_empty
    end
  end

  describe "SegmentationApi" do
    it "Segments an input text." do
      result = NlpApiClient::SegmentationApi.nlp_segmentation_segment_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.segments).not_to be_empty
    end
    it "Segments an input text, using a specified profile" do
      result = NlpApiClient::SegmentationApi.nlp_segmentation_segment_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports", :profile => 0})
      expect(result.segments).not_to be_empty
    end
    it "Segments an input text, then tokenize each segment." do
      result = NlpApiClient::SegmentationApi.nlp_segmentation_segment_and_tokenize_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.segments).not_to be_empty
    end
    it "Tokenizes an input text." do
      result = NlpApiClient::SegmentationApi.nlp_segmentation_tokenize_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.tokens).not_to be_empty
    end
    it "Lists languages in which Segmentation is supported." do
      result = NlpApiClient::SegmentationApi.nlp_segmentation_supported_languages_get
      expect(result.languages).not_to be_empty
    end
  end

  describe "TranscriptionApi" do
    it "Transcribes text from a source language to a target language." do
      result = NlpApiClient::TranscriptionApi.nlp_transcription_transcribe_get("en", "ru",  {:input =>  "John Doe"})
      expect(result).to eq("ДжонДу")
    end
    it "Lists languages pairs in which Transcription is supported. " do
      result = NlpApiClient::TranscriptionApi.nlp_transcription_supported_languages_get
      expect(result.language_pairs).not_to be_empty
    end
  end

  describe "MorphologyApi" do
    it "Lists of languages pairs in which Morphological analysis is supported." do
      result = NlpApiClient::MorphologyApi.nlp_morphology_supported_languages_get
      expect(result.languages).not_to be_empty
    end
    it "Gets the lemma for elements of an input text. " do
      result = NlpApiClient::MorphologyApi.nlp_morphology_extract_lemma_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.lemmas).not_to be_empty
    end
    it "Gets Noun-phrases and chunks from an input text. " do
      result = NlpApiClient::MorphologyApi.nlp_morphology_extract_np_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.chunks).not_to be_empty
    end
    it "Gets the part of speech for elements of an input text." do
      result = NlpApiClient::MorphologyApi.nlp_morphology_extract_pos_get("en",  {:input =>  "Bodies from the MH17 crash are being kept on this train, as Natalia Antelava reports"})
      expect(result.parts_of_speech).not_to be_empty
    end

  end
end
