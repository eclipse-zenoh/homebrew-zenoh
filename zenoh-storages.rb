class ZenohStorages < Formula
  desc "Eclipse zenoh storages plugin (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.5/eclipse-zenoh-0.5.0-beta.5-macosx10.7-x86-64.tgz"
  version "0.5.0-beta.5"
  sha256 "eafd06b1953e3c79b7ef13591b622484507ab68a78bcee4caa7886df79183fb3"

  depends_on "zenohd"

  def install
    lib.install "libzplugin_storages.dylib"
  end
end
