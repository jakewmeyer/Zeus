require "./zeus/*"
require "http/client"

def gitignore(langs)
  os = get_os
  url = "https://www.gitignore.io/api/#{os}"
  langs.each do |lang|
    url += ",#{lang}"
  end
  response = HTTP::Client.get(url)
  puts response.body
end

def get_os
  os = `uname`
  if os == "Darwin\n"
    os = "macos"
  elsif os == "Linux\n"
    os = "linux"
  else
    os = "windows"
  end
  return os
end


gitignore(ARGV)
