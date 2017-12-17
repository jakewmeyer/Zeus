require "./zeus/*"
require "./names"
require "http/client"

module Zeus
  def self.gitignore(langs)
    os = get_os
    url = "https://www.gitignore.io/api/#{os}"
    langs.each do |n|
      url += ",#{n}"
    end
    response = HTTP::Client.get(url)
    puts response.body
  end

  def self.extensions
    files = [] of String
    Dir.glob("**/*") do |n|
      files.push(File.extname(n))
    end
    extensions = files.reject do |n|
      n.empty? || /.git/.match(n) || /.sample/.match(n)
    end
    return extensions.uniq
  end

  def self.get_os
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
end

extensions = Zeus.extensions
langs = Names.get_names(extensions)
Zeus.gitignore(langs)
