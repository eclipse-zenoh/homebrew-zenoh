require "json"

class ZenohBackendInfluxdbV1 < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh influxdb backend"
  homepage "https://zenoh.io"

  depends_on "zenoh-plugin-storage-manager"
  depends_on "zenohd"

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
    lib.install "libzenoh_backend_influxdb.dylib"
  end
end
