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
  binding.pry
  library.each do |key, value|
    if library[value][:japanese] == emote
      return library[key].to_s
    else
      "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning (file, emote)

end
