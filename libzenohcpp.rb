require "json"
require "fileutils"

class Libzenohcpp < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Zenoh-cpp API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos

  def install
    lib.install "lib/pkgconfig/zenohcxx.pc"
    lib.install "lib/cmake/zenohcxx/zenohcxxConfig.cmake"
    lib.install "lib/cmake/zenohcxx/zenohcxxConfigVersion.cmake"
    include.install Dir["include/*"]

    mkdir_p "#{lib}/cmake/zenohcxx"
    ln_sf "#{lib}/zenohcxxConfig.cmake", "#{lib}/cmake/zenohcxx/zenohcxxConfig.cmake"
    ln_sf "#{lib}/zenohcxxConfigVersion.cmake", "#{lib}/cmake/zenohcxx/zenohcxxConfigVersion.cmake"
  end

  test do
    assert_path_exists lib/"zenohcxx.pc"
    assert_path_exists lib/"cmake/zenohcxx/zenohcxxConfig.cmake"
  end
end
