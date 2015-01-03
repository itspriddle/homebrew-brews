require "formula"

class Site5Devel < Formula
  url "https://raw.githubusercontent.com/itspriddle/homebrew-site5/master/Formula/site5-devel.rb"
  version "HEAD"

  # Rails apps
  depends_on "dwdiff"
  depends_on "imagemagick"
  depends_on "mysql"
  depends_on "phantomjs"
  depends_on "postgresql" if build.with? "postgresql"
  depends_on "pow"
  depends_on "redis"

  # Utilities
  depends_on "gist"
  depends_on "git"
  depends_on "gnupg"
  depends_on "macvim" => "override-system-vim"
  depends_on "ruby-install"
  depends_on "the_silver_searcher"
  depends_on "tree"
  depends_on "vnstat"
  depends_on "wget"

  # Noop
  def install; end
end
