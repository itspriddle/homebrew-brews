require 'formula'

class Zone2sql < Formula
  homepage ''
  url 'http://downloads.powerdns.com/releases/pdns-2.9.22.6.tar.gz'
  version '2.9.22.6'
  sha1 '608d5255b2989902fdc6048cd81bc07bc1305e3e'

  depends_on 'boost' => :build
  depends_on 'mysql'

  def install
    system "./configure", "--prefix=#{prefix}", "--with-mysql=#{mysql_dir}", "--with-mysql-includes=#{HOMEBREW_PREFIX}/include"
    system "make"
    system "install -m 755 -d #{prefix}/bin"
    system "install -m 755 -c pdns/backends/bind/zone2sql #{prefix}/bin"
  end

  def test
    system "test -f #{prefix}/bin/zone2sql"
  end

  private

  def mysql_dir
    Pathname.new("#{HOMEBREW_PREFIX}/opt/mysql").realpath
  end
end
