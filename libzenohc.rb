require "json"
require "fileutils"

class Libzenohc < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Zenoh-c API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos

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

    mkdir_p "#{lib}/cmake/zenohc"
    ln_sf "#{lib}/zenohcConfig.cmake", "#{lib}/cmake/zenohc/zenohcConfig.cmake"
    ln_sf "#{lib}/zenohcConfigVersion.cmake", "#{lib}/cmake/zenohc/zenohcConfigVersion.cmake"
  end

  test do
    assert_path_exists lib/"libzenohc.dylib"
    assert_path_exists lib/"zenohc.pc"
  end
end
