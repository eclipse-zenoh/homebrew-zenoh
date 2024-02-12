require "json"

class Zenoh < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"

  depends_on "zenohd"
  depends_on "libzenohc" => :recommended
  depends_on "zenoh-plugin-rest" => :recommended
  depends_on "zenoh-plugin-storage-manager" => :recommended

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
    File.write("zenoh.1", `zenohd --help`)
    man1.install "zenoh.1"
  end
end
