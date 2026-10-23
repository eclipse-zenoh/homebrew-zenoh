require "json"

class Zenoh < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos
  depends_on "zenohd"
  depends_on "zenoh-plugin-rest" => :recommended
  depends_on "zenoh-plugin-storage-manager" => :recommended

  def install
    File.write("zenoh.1", `zenohd --help`)
    man1.install "zenoh.1"
  end
end
