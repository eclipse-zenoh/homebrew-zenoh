class ZenohBackendInfluxdb < Formula
  desc "Eclipse zenoh influxdb backend"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.7.2-rc/x86_64-apple-darwin/zenoh-backend-influxdb-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "d076b25f4fd40b3a45e582995bd5bca947cb41edfdcbfa705929ac566b35c8de"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.7.2-rc/aarch64-apple-darwin/zenoh-backend-influxdb-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "3719594c0de9907f9fbb696b4c5379b33d2dfe4aafe057718c78ecb40bcae5f3"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_influxdb.dylib"
  end
end
