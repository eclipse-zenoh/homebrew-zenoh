class ZenohBackendS3 < Formula
  desc "Eclipse zenoh s3 backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-s3-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "c69b9b1491839c97d1935581a2d20f5998fb49c773e45c2414314bc1bdbc7348"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-s3-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "3331a77998f8c4d119c473bc3adcaec2671aa86fd5285f90360858fd3ea7a233"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_s3.dylib"
  end
end
