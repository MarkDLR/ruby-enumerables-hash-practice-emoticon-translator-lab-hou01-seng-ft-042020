# require modules here
require 'yaml'

def load_library(yaml_file)
   library = YAML.load_file(yaml_file)
   hash = {}
   library.each do |key, value|
    hash[key] = {}
    hash[key][:japanese] = value[1]
    hash[key][:english] = value[0]
  end
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(yaml_file, emoticon)
  
  # code goes here
end