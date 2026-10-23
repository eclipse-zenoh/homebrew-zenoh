require "json"

class ZenohPluginRemoteApi < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh remote api plugin"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos
  depends_on "zenoh-plugin-storage-manager"
  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_remote_api.dylib"
  end
end
