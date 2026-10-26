require "json"

class ZenohPluginWebserver < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh webserver plugin"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos
  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_webserver.dylib"
  end

  test do
    assert_path_exists lib/"libzenoh_plugin_webserver.dylib"
  end
end
