class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.0-rc/x86_64-apple-darwin/zenoh-c-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "16802aee29bcd27a917b9a3d515489f23f69b6be4a2a4b0f463dde6e338e721b"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.0-rc/aarch64-apple-darwin/zenoh-c-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "dde866f9ecd5702b027357f5e15a7694374fa7560c0c9e5b5ebad2bc3e36a458"
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
