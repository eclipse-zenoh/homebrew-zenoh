class ZenohStorages < Formula
  desc "Eclipse zenoh storages plugin (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.3/eclipse-zenoh-0.5.0-beta.3-macosx10.7-x86-64.tgz"
  version "0.5.0-beta.3"
  sha256 "cfe140bba08506fd92939b6f0288a656eb25843a2e70b097e4e8e2304754987e"

  depends_on "zenohd"

  def install
    lib.install "libzplugin_storages.dylib"
  end
end
