require "json"

class Libzenohc < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"

  on_macos do
    on_intel do
      url release["x86_64-url"]
      sha256 release["x86_64-sha256"]
    end
    on_arm do
      url release["aarch64-url"]
      sha256 release["aarch64-sha256"]
    end
  end

  def install
    lib.install "libzenohc.dylib"
    include.install "include/zenoh.h"
    include.install "include/zenoh_commons.h"
    include.install "include/zenoh_concrete.h"
    include.install "include/zenoh_macros.h"
  end
end
