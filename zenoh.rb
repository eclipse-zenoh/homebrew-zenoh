class Zenoh < Formula
  desc "Eclipse Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.9/x86_64-apple-darwin/zenoh-0.5.0-beta.9-x86_64-apple-darwin.zip"
  version "0.5.0-beta.9"
  sha256 "230fe51193df5f37468cca5e1d2c4d3180b69a3b92282ffa18ea4ae60b00cc10"

  depends_on "zenohd"
  depends_on "zenoh-plugin-rest" => :recommended
  depends_on "zenoh-plugin-storages" => :recommended
  depends_on "libzenohc" => :recommended

  def install
    File.open('zenoh.1', 'w') { |file| file.write(`zenohd --help`) }
    man1.install "zenoh.1"
  end
end
