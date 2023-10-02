class ZenohBackendS3 < Formula
  desc "Eclipse zenoh s3 backend"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.10.0-rc/x86_64-apple-darwin/zenoh-backend-s3-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "1453a4afa5b8bd0e773c96bd0f49a3ccd834f5590c76dfcb265c7df7ccf80bd7"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.10.0-rc/aarch64-apple-darwin/zenoh-backend-s3-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "b86d5207699b88f86a3091c95dcbd89aa3f351bb4495d473ac2549571f8fb2b9"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_s3.dylib"
  end
end
