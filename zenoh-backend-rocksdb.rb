class ZenohBackendRocksdb < Formula
  desc "Eclipse zenoh rocksdb backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-rocksdb-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "3bbe036bbc4317e20b1c5e697c4f23cd4290327833caa3fe53c3c4bb19675204"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-rocksdb-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "e1638a3661d5c4be1f1890e198b3d0f6d3e6466a56fa84d0681d36e7927ceecf"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_rocksdb.dylib"
  end
end
