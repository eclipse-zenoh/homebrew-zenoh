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
    lib.install "lib/libzenohc.dylib"
    lib.install "lib/libzenohc.a"
    lib.install "lib/pkgconfig/zenohc.pc"
    lib.install "lib/cmake/zenohc/zenohcConfig.cmake"
    lib.install "lib/cmake/zenohc/zenohcConfigVersion.cmake"
    include.install "include/zenoh.h"
    include.install "include/zenoh_commons.h"
    include.install "include/zenoh_concrete.h"
    include.install "include/zenoh_macros.h"
    include.install "include/zenoh_configure.h"
    include.install "include/zenoh_constants.h"
    include.install "include/zenoh_memory.h"
    include.install "include/zenoh_opaque.h"
  end
end
