class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  url "https://download.eclipse.org/zenoh/zenoh-c/0.5.0-beta.9/x86_64-apple-darwin/zenoh-c-0.5.0-beta.9-x86_64-apple-darwin.zip"
  version "0.5.0-beta.9"
  sha256 "65e435571563b2f1816a8bb1da17ab4792366e0ce24d11a1f99f3fd981956b78"

  def install
    lib.install "libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh"
  end
end
