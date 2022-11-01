class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.6.0-beta.1"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.6.0-beta.1/x86_64-apple-darwin/zenoh-c-0.6.0-beta.1-x86_64-apple-darwin.zip"
      sha256 "f7551c4827d726551989244bf626d2abe982e1c16306f7c432ca7c150181e45f"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.6.0-beta.1/aarch64-apple-darwin/zenoh-c-0.6.0-beta.1-aarch64-apple-darwin.zip"
      sha256 "a87653ec7a6b68392c19be382cf3a3e22f35968e5e3b1392749b18cfa490d376"
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
