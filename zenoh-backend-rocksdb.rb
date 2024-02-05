class ZenohBackendRocksdb < Formula
  desc "Eclipse zenoh rocksdb backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-rocksdb-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "462c858257b273c9e3e53fb08d2a70b98984e0fc762aa7b880b7092497f5a88a"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-rocksdb/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-rocksdb-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "dfda4c319d7ea9e8d94758c79fd3adf64850fc10823499b3bd6e026d57628290"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_rocksdb.dylib"
  end
end
