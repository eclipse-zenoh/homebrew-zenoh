class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh-c/0.5.0-b5/eclipse-zenoh-c-0.5.0-b5-macosx10.7-x86-64.tar.gz"
  version "0.5.0-beta.5"
  sha256 "369a9edf3098bac97255a7a72607a184202ac244e8caef887015dc73672f175e"

  def install
    lib.install "libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh"
  end
end
