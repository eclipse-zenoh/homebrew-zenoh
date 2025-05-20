require "json"
require "fileutils"

class Libzenohcpp < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Zenoh-cpp API (geo-distributed pub/sub/query/storage of data)"
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
    lib.install "lib/pkgconfig/zenohcxx.pc"
    lib.install "lib/cmake/zenohcxx/zenohcxxConfig.cmake"
    lib.install "lib/cmake/zenohcxx/zenohcxxConfigVersion.cmake"
    include.install Dir["include/*"]

    FileUtils::mkdir_p "#{lib}/cmake/zenohcxx"
    ln_sf "#{lib}/zenohcxxConfig.cmake", "#{lib}/cmake/zenohcxx/zenohcxxConfig.cmake"
    ln_sf "#{lib}/zenohcxxConfigVersion.cmake", "#{lib}/cmake/zenohcxx/zenohcxxConfigVersion.cmake"
  end
end
