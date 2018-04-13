spec = File.read("#{HOMEBREW_PREFIX}/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/vim.rb").lines

find_value = ->(word) do
  spec.grep(/\A  #{word}/).first.split('"')[1]
end

$PRISTINE_VIM_SPEC = {
  ruby:     which("ruby", ENV["HOMEBREW_PATH"]),
  homepage: find_value["homepage"],
  desc:     find_value["desc"],
  sha256:   find_value["sha256"],
  url:      find_value["url"],
  head:     find_value["head"],
}

class Vim < Formula
  desc     $PRISTINE_VIM_SPEC[:desc]
  homepage $PRISTINE_VIM_SPEC[:homepage]
  url      $PRISTINE_VIM_SPEC[:url]
  sha256   $PRISTINE_VIM_SPEC[:sha256]
  head     $PRISTINE_VIM_SPEC[:head]

  def install
    ENV.delete("SDKROOT")

    # vim doesn't require any Python package, unset PYTHONPATH.
    ENV.delete("PYTHONPATH")

    # We specify HOMEBREW_PREFIX as the prefix to make vim look in the
    # the right place (HOMEBREW_PREFIX/share/vim/{vimrc,vimfiles}) for
    # system vimscript files. We specify the normal installation prefix
    # when calling "make install".
    # Homebrew will use the first suitable Perl & Ruby in your PATH if you
    # build from source. Please don't attempt to hardcode either.
    system "./configure", *%W(
      --prefix=#{HOMEBREW_PREFIX}
      --mandir=#{man}
      --enable-multibyte
      --with-tlib=ncurses
      --enable-cscope
      --with-compiledby=Homebrew
      --enable-perlinterp
      --enable-pythoninterp
      --enable-rubyinterp
      --with-ruby-command=#{$PRISTINE_VIM_SPEC[:ruby]}
      --enable-gui=no
      --disable-nls
      --enable-terminal
    )

    system "make"

    # Parallel install could miss some symlinks
    # https://github.com/vim/vim/issues/1031
    ENV.deparallelize

    # If stripping the binaries is enabled, vim will segfault with
    # statically-linked interpreters like ruby
    # https://github.com/vim/vim/issues/114
    system "make", "install", "prefix=#{prefix}", "STRIP=#{which "true"}"
  end
end
