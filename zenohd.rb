class Zenohd < Formula
  desc "Eclipse zenoh router (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.6.0-beta.1/x86_64-apple-darwin/zenoh-0.6.0-beta.1-x86_64-apple-darwin.zip"
  version "0.6.0-beta.1"
  sha256 "b09a881b9ffdc76db64bc67d1bf064858e696ea09c5f3b5a2c932edc1bb65220"

  def install
    bin.install "zenohd"
  end

end
