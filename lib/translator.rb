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
  emotes
end

def get_japanese_emoticon (file, emote)
  library = load_library(file)
  library.each do |key|
    if file[key][:japanese] == emote
      return file[key]
    end
  end
end

def get_english_meaning
  # code goes here
end
