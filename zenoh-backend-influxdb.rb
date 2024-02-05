class ZenohBackendInfluxdb < Formula
  desc "Eclipse zenoh influxdb backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-influxdb-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "ce8afd477de5cc6340a7d10a1f7158d0d98f63082326a5cd63bb6af6513aae3f"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-influxdb-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "beff8cb583e07c3b610bc4073decbd1efb6211a4319a643576551e09cb648c50"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_influxdb.dylib"
  end
end
