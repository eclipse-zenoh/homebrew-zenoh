class Libzenohc < Formula
  desc "zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.1-rc/x86_64-apple-darwin/zenoh-c-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "bd44c88b8ba3d8245d97f780fe82873ed8ee87c09c37365509e2feae2a198e28"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-c/0.10.1-rc/aarch64-apple-darwin/zenoh-c-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "0df497b16cf1bd968deea36aca43d6c086a54d69ea78e3feaed309760e0dcaa4"
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
