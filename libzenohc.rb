class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh/0.5.0-beta.3/zenoh-c/eclipse-zenoh-c-0.5.0-beta.3-macosx10.7-x86-64.tar.gz"
  version "0.5.0-beta.3"
  sha256 "3234260ae70ac1a4fd5251eebda61fcc36aea8a66e885b69e076959c3b163ba1"

  def install
    lib.install "libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh"
  end
end
