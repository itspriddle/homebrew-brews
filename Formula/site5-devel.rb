require "formula"

class Site5Devel < Formula
  url "https://raw.githubusercontent.com/itspriddle/homebrew-site5/master/Formula/site5-devel.rb"
  version "HEAD"

  option "with-mysql",      "Install MySQL server"
  option "with-postgresql", "Install PostgreSQL server"

  # Rails apps
  depends_on "dwdiff"
  depends_on "imagemagick"
  depends_on "phantomjs"
  depends_on "pow"
  depends_on "redis"

  # Databases (optional)
  depends_on "mysql"      if build.with? "mysql"
  depends_on "postgresql" if build.with? "postgresql"

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
