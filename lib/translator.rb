# require modules here
require 'yaml'

def load_library(yaml_file)
   library = YAML.load_file(yaml_file)
   hash = {}
   library.each do |key, value|
    hash[key] = {}
    hash[key][:japanese] = value[0]
    hash[key][:english] = value[1]
    memo
  end
  file
end

def get_japanese_emoticon(yaml_file, emoticon)
  library = load_library(yaml_file)
  response = nil
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      response = japanese
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end

def get_english_meaning(yaml_file, emoticon)
  library = load_library(yaml_file)
  response = nil
  library["get_meaning"].each do |emo, trans|
    if emo == emoticon
      response = trans
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
  # code goes here
end