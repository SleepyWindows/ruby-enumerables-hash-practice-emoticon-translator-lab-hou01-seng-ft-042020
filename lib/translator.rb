require 'pry'
require 'yaml'

def load_library (file)
  emotes_src = YAML.load_file(file)
  emoticons = {}

  emotes_src.each do |key, value|
    emoticons[key] = {}
    emoticons[key][:english] = value[0]
    emoticons[key][:japanese] = value[1]
  end
  emoticons
end


def get_japanese_emoticon (file, emote)
  library = load_library(file)
  library.each do |key, value|
    if value[:english] == emote

      return value[:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning (file, emote)
  library = load_library(file)
  library.each do |key, value|
    #binding.pry
    if value[:japanese] == emote
      return key.to_s
    else
      "Sorry, that emoticon was not found"
    end
  end
end
