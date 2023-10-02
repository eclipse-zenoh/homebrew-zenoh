class ZenohBackendRocksdb < Formula
  desc "Eclipse zenoh rocksdb backend"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.10.0-rc/x86_64-apple-darwin/zenoh-backend-rocksdb-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "577634f5c7461c34e63e639d1302634dc801b52ab5cc376b29f31e99946f4568"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.10.0-rc/aarch64-apple-darwin/zenoh-backend-rocksdb-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "2a2fc82da933b738ea2f58364e76f23a525721ade0383dcbd564af738afe8f98"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_rocksdb.dylib"
  end
end
