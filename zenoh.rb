class Zenoh < Formula
  desc "Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.5/eclipse-zenoh-0.5.0-beta.5-macosx10.7-x86-64.tgz"
  version "0.5.0-beta.5"
  sha256 "eafd06b1953e3c79b7ef13591b622484507ab68a78bcee4caa7886df79183fb3"

  depends_on "zenohd"
  depends_on "zenoh-http" => :recommended
  depends_on "zenoh-storages" => :recommended
  depends_on "libzenohc" => :recommended
  
  def install
    File.open('zenoh.1', 'w') { |file| file.write(`zenohd --help`) }
    man1.install "zenoh.1"
  end
end
