class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh-c/0.5.0-beta.8/eclipse-zenoh-c-0.5.0-beta.8-macosx10.7-x86-64.tar.gz"
  version "0.5.0-beta.8"
  sha256 "95a3ec862005cb0958797fee4e36acec0cc144b544f038ccddec1b9b7060e6d9"

  def install
    lib.install "libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh"
  end
end
