class Zenoh < Formula
  desc "Eclipse Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.6.0-beta.1/x86_64-apple-darwin/zenoh-0.6.0-beta.1-x86_64-apple-darwin.zip"
  version "0.6.0-beta.1"
  sha256 "b09a881b9ffdc76db64bc67d1bf064858e696ea09c5f3b5a2c932edc1bb65220"

  depends_on "zenohd"
  depends_on "zenoh-plugin-rest" => :recommended
  depends_on "zenoh-plugin-storages" => :recommended
  depends_on "libzenohc" => :recommended

  def install
    File.open('zenoh.1', 'w') { |file| file.write(`zenohd --help`) }
    man1.install "zenoh.1"
  end
end
