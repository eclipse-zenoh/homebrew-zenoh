class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh-c/0.6.0-beta.1/x86_64-apple-darwin/zenoh-c-0.6.0-beta.1-x86_64-apple-darwin.zip"
  version "0.6.0-beta.1"
  sha256 "f7551c4827d726551989244bf626d2abe982e1c16306f7c432ca7c150181e45f"

  def install
    lib.install "libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh_commons.h"
    include.install "include/zenoh_concrete.h"
    include.install "include/zenoh_macros.h"
  end
end
