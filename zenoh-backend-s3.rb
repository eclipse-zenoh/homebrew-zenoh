class ZenohBackendS3 < Formula
  desc "Eclipse zenoh s3 backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-s3-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "6ccc57ad8e3887aaa431d4eb3102e78643a234a8715993cdca9924580afd0979"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-s3-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "d30c4d371c74265cb7b9bc7afb5141184504bd57a940ca246de7477e34aa3b45"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_s3.dylib"
  end
end
