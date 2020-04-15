require 'yaml'

def load_library (file)
  emoticons = YAML.load_file(file_path)
  emotes = {}

  emoticons.each do |key, value|
    emotes[key] = {}
    emote[key][:english] = value[0]
    emote[key][:japanese] = value[1]
  end
end

def get_japanese_emoticon (file, emote)
  file.each do |key|
    if file[key][:japanese] = emote
      return file[key]
    end
  end
end

def get_english_meaning
  # code goes here
end
