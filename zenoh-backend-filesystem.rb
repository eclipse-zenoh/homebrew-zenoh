class ZenohBackendFilesystem < Formula
  desc "Eclipse zenoh filesystem backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-filesystem-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "f365a1591336a7eafbc701641c6651d8ddbfdd2d7d4e71f872b6f75186cdd5df"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-filesystem-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "5de5d37d43c1891d8cf538ad09d9f4c44af73df54406a6acaa6799f7e9b04436"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_fs.dylib"
  end
end
