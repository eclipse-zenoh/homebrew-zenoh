class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.0-rc/x86_64-apple-darwin/zenoh-c-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "4a21ac5a24c175d30a1a498c8145865e42d1348bc34921031dc8fe124be65754"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.0-rc/aarch64-apple-darwin/zenoh-c-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "55b85a1e4a5dcb81c1221bafc6f9780d989db379a50aecd6c38f6841385cae5d"
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
