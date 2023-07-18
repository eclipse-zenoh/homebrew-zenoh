class ZenohBackendRocksdb < Formula
  desc "Eclipse zenoh rocksdb backend"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.7.2-rc/x86_64-apple-darwin/zenoh-backend-rocksdb-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "e8014fa46de340836da6c2fde13976f5b685f3bdf87e48787d606ee53b9639dd"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.7.2-rc/aarch64-apple-darwin/zenoh-backend-rocksdb-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "ae36cb4a41827124754a89c642f5e277d08ee977870e8cf8659864ef1c926e57"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_rocksdb.dylib"
  end
end
