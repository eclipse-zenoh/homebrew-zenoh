class Zenoh < Formula
  desc "Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.3/eclipse-zenoh-0.5.0-beta.3-macosx10.7-x86-64.tgz"
  version "0.5.0-beta.3"
  sha256 "cfe140bba08506fd92939b6f0288a656eb25843a2e70b097e4e8e2304754987e"

  depends_on "zenohd"
  depends_on "zenoh-http" => :recommended
  depends_on "zenoh-storages" => :recommended
  depends_on "libzenohc" => :recommended
  
  def install
    File.open('zenoh.1', 'w') { |file| file.write(`zenohd --help`) }
    man1.install "zenoh.1"
  end
end
