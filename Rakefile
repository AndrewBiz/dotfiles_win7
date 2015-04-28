DO_NOT_SYMLINK = %w[
  .gitignore
  .gitmodules
  extras
  Rakefile
  README.markdown
  tmp
  LICENSE
]
ADD_DOT = %w[
  gitconfig
  gitignore_global
]

def windows?
  RbConfig::CONFIG['host_os'] =~ /mswin|mingw/
end

if windows?
  def ln_win source, dest, out = nil
    dest = File.expand_path(dest).gsub(?/, ?\\)
    source = File.expand_path(source).gsub(?/, ?\\)
    opt = File.directory?(source) ? '/d ' : ''
    output = `cmd.exe /c mklink #{opt}"#{dest}" "#{source}"` # & pause`
    out.puts output if out
  end
end

def error(text)
  STDERR.puts "!  #{text}"
end

def info(text)
  STDOUT.puts "*  #{text}"
end

def info_rm(text)
  STDOUT.puts "x  #{text}"
end


task :default => :install

desc "Install dotfiles."
task :install do
  Dir["*"].each do |file|
    source = File.join(Dir.pwd, file)
    basename = File.basename(source)
    info "scanning #{basename}"
    next if DO_NOT_SYMLINK.include?(basename)

    if ADD_DOT.include?(basename)
	    target = File.expand_path("~/.#{basename}")
	  else
      target = File.expand_path("~/#{basename}")
    end
    if File.exist?(target)
      error "#{target} exists. Will not automatically overwrite"
      next
    end

    ln_win(source, target)
    info "Creating symlink: #{target} --> #{source}"
  end

  #system "git submodule update --init"
end
