class ZenohBackendS3 < Formula
  desc "Eclipse zenoh s3 backend"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.7.2-rc/x86_64-apple-darwin/zenoh-backend-s3-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "7dd5768e1ac41955d1a37ed683feb6b68ecbbeb6d02d29dfa6c7d6cfa433777c"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-s3/0.7.2-rc/aarch64-apple-darwin/zenoh-backend-s3-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "e21a703f7060852ef840f705a594a3619f78a9264d047f58cd4065ee9c428934"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_s3.dylib"
  end
end
