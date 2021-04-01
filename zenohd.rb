class Zenohd < Formula
  desc "Eclipse zenoh router (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.8/eclipse-zenoh-0.5.0-beta.8-macosx10.7-x86-64.tgz"
  version "0.5.0-beta.8"
  sha256 "4d5a3e17b60badd018b39cb2d29e88b1855641ca8add2cb6160e21441fa0492b"

  def install
    bin.install "zenohd"
  end

end
