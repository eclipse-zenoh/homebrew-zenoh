class ZenohBackendInfluxdb < Formula
  desc "Eclipse zenoh influxdb backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-influxdb-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "540d953f17702ec1ec3388c6a946753169fb6a22bdfe912a9c2302036dfb1af0"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-influxdb-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "5e7fb736ec4a74818d84bdfafba3fa1fbc7204a39430ec7d0d56d4f309a5580b"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_influxdb.dylib"
  end
end
