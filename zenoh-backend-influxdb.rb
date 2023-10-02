class ZenohBackendInfluxdb < Formula
  desc "Eclipse zenoh influxdb backend"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.10.0-rc/x86_64-apple-darwin/zenoh-backend-influxdb-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "f02fe076c9339aca6cfdad29185d5517b958a2b6126d818bd59a5e36a02eb014"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-influxdb/0.10.0-rc/aarch64-apple-darwin/zenoh-backend-influxdb-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "4568d9565c3f61d391b54a3451bff07496f750f577c29b935c15993f3b579f93"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_influxdb.dylib"
  end
end
