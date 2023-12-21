class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.1-rc/x86_64-apple-darwin/zenoh-c-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "8666cae69548a5173713b412219a34c461fce57e12c55d34b70afe1bc1c1f592"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.1-rc/aarch64-apple-darwin/zenoh-c-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "1ccc296ef7ca660778a7108181c567d8429ed612f82c4c8ef6b51e02a26672bf"
    end
  end

  def install
    lib.install "lib/libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh_commons.h"
    include.install "include/zenoh_concrete.h"
    include.install "include/zenoh_macros.h"
  end
end
