require "./zeus/*"

module Names
  
  def self.get_names(extensions)
    langs = [] of String

    rust = [".rs"]
    crystal = [".cr"]
    java = [".java"]
    cpp = [".cpp", ".cc"]
    cs = [".cs"]
    c = [".c"]
    python = [".py"]
    r = [".R"]
    matlab = [".mat"]
    ruby = [".rb"]
    perl = [".pl", ".PL"]
    perl6 = [".p6", ".pl6"]
    swift = [".swift"]
    obj = [".m"]
    assembler = [".asm"]
    go = [".go"]
    coffeescript = [".coffee"]
    scala = [".scala"]
    dart = [".dart"]
    erlang = [".erl"]
    d = [".d"]
    fortran = [".f", ".for", ".f90", ".f15"]
    julia = [".jl"]
    groovy = [".groovy"]
    clojure = [".clj", ".cljs"]

    langs.push("rust") unless (extensions & rust).empty?
    langs.push("crystal") unless (extensions & crystal).empty?
    langs.push("java") unless (extensions & java).empty?
    langs.push("c++") unless (extensions & cpp).empty?
    langs.push("csharp") unless (extensions & cs).empty?
    langs.push("c") unless (extensions & c).empty?
    langs.push("python") unless (extensions & python).empty?
    langs.push("r") unless (extensions & r).empty?
    langs.push("matlab") unless (extensions & matlab).empty?
    langs.push("ruby") unless (extensions & ruby).empty?
    langs.push("perl") unless (extensions & perl).empty?
    langs.push("perl6") unless (extensions & perl6).empty?
    langs.push("swift") unless (extensions & swift).empty?
    langs.push("objective-c") unless (extensions & obj).empty?
    langs.push("assembler") unless (extensions & assembler).empty?
    langs.push("go") unless (extensions & go).empty?
    langs.push("coffeescript") unless (extensions & coffeescript).empty?
    langs.push("scala") unless (extensions & scala).empty?
    langs.push("dart") unless (extensions & dart).empty?
    langs.push("erlang") unless (extensions & erlang).empty?
    langs.push("d") unless (extensions & d).empty?
    langs.push("fortran") unless (extensions & fortran).empty?
    langs.push("julia") unless (extensions & julia).empty?
    langs.push("groovy") unless (extensions & groovy).empty?
    langs.push("clojure") unless (extensions & clojure).empty?

    return langs
  end
end
