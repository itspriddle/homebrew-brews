class SslCertCheck < Formula
  homepage "https://github.com/Matty9191/ssl-cert-check"
  head     "https://raw.githubusercontent.com/Matty9191/ssl-cert-check/master/ssl-cert-check"

  def install
    bin.install "ssl-cert-check" => "ssl-cert-check"
  end
end
