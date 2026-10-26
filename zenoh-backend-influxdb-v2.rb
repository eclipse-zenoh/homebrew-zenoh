require "json"

class ZenohBackendInfluxdbV2 < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh influxdb backend"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos
  depends_on "zenoh-plugin-storage-manager"
  depends_on "zenohd"

  def install
    lib.install "libzenoh_backend_influxdb2.dylib"
  end

  test do
    assert_path_exists lib/"libzenoh_backend_influxdb2.dylib"
  end
end
