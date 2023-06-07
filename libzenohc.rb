class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.7.2-rc/x86_64-apple-darwin/zenoh-c-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "9568dbc4d34968d3345d8688742ca0b39d12a8dd81b1122901a7fc876a1fa0db"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.7.2-rc/aarch64-apple-darwin/zenoh-c-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "4d611c0161b28dae12e3c5fabc2cf4823b4c3544acef9fe53e6a4911aff2fb1b"
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
