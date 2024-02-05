class Zenohd < Formula
  desc "Eclipse zenoh router (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh/0.10.1-rc/x86_64-apple-darwin/zenoh-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "0a9471cc1ff0e18b51120c7cc7d2e920afb3f2a1647f03d059a6fc24e9cb4a45"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh/0.10.1-rc/aarch64-apple-darwin/zenoh-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "03ae125c26d498a83cd91dfc4516f36c0503b595959400bc04907562dfeed19f"
    end
  end

  def install
    bin.install "zenohd"
  end

end
