class Zenoh < Formula
  desc "Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.8/eclipse-zenoh-0.5.0-beta.8-macosx10.7-x86-64.tgz"
  version "0.5.0-beta.8"
  sha256 "4d5a3e17b60badd018b39cb2d29e88b1855641ca8add2cb6160e21441fa0492b"

  depends_on "zenohd"
  depends_on "zenoh-http" => :recommended
  depends_on "zenoh-storages" => :recommended
  depends_on "libzenohc" => :recommended

  def install
    File.open('zenoh.1', 'w') { |file| file.write(`zenohd --help`) }
    man1.install "zenoh.1"
  end
end
