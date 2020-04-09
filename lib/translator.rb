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

def get_japanese_emoticon(yaml_file, emoticon)
  library = load_library(yaml_file)
  emoticon = library.key
end

def get_english_meaning(yaml_file, emoticon)
  
  # code goes here
end