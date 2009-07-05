require 'lib/chipmunk/version'

begin
  require 'echoe'
rescue LoadError
  abort "You'll need to have 'echoe' installed to use xe_named_scopes's Rakefile"
end

version = Chipmunk::VERSION
if ENV['SNAPSHOT'].to_i == 1
  version << "." << Time.now.utc.strftime("%Y%m%d%H%M%S")
end

Echoe.new('chipmunk-ruby', version) do |p|
  p.clean_pattern    = ["pkg", "doc", 'build/*', '**/coverage', '**/*.o', '**/*.so', '**/*.a', '**/*.log', "{ext,lib}/*.{bundle,so,obj,pdb,lib,def,exp}", "ext/Makefile", "{ext,lib}/**/*.{bundle,so,obj,pdb,lib,def,exp}", "ext/**/Makefile", "pkg", "*.gem", ".config"]
  p.changelog        = "CHANGELOG.rdoc"
  p.author           = "Ladislav Martincik"
  p.email            = "ladislav.martincik@gmail.com"
  p.summary          = "Ruby bindings for Chipmunk Physics library"
  p.url              = "http://github.com/lacomartincik/chipmunk-ruby"
  p.need_zip         = true
  p.rdoc_pattern     = /^(lib|README.rdoc|CHANGELOG.rdoc)/
  p.ignore_pattern   = ["tmp/*", "script/*"]
end
