class PressedDevel < Formula
  url "https://raw.githubusercontent.com/itspriddle/homebrew-brews/master/Formula/pressed-devel.rb"
  version "HEAD"

  option "with-mysql",      "Install MySQL server"
  option "with-postgresql", "Install PostgreSQL server"

  # Ruby/Rails apps
  depends_on "ruby-install"
  depends_on "dwdiff"
  depends_on "imagemagick"
  depends_on "itspriddle/brews/legacy-phantomjs"
  depends_on "pow"
  depends_on "redis"
  depends_on "ansible"

  # PHP
  depends_on "itspriddle/brews/composer"
  depends_on "itspriddle/brews/wp-cli"

  # Databases (optional)
  depends_on "mysql"                          if build.with? "mysql"
  depends_on "homebrew/versions/postgresql94" if build.with? "postgresql"

  # Utilities
  depends_on "gist"
  depends_on "git"
  depends_on "gnupg"
  # depends_on "macvim" => "override-system-vim"
  depends_on "vim"
  depends_on "the_silver_searcher"
  depends_on "tree"
  depends_on "vnstat"
  depends_on "wget"
  depends_on "hub"
  depends_on "rename"
  depends_on "speedtest_cli"
  depends_on "jq"
  depends_on "keybase"
  depends_on "shellcheck"
  depends_on "zsh"

  # Noop
  def install
    # Work around "Error: Empty installation"
    (buildpath/"INSTALLED").write ""
    prefix.install "INSTALLED"

    if build.with? "postgresql"
      system "initdb #{var}/postgres -E utf8"
      system "createdb #{ENV["USER"]}"
    end
  end
end
