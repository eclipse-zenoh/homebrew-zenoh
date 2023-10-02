class ZenohBackendFilesystem < Formula
  desc "Eclipse zenoh filesystem backend"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.10.0-rc/x86_64-apple-darwin/zenoh-backend-filesystem-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "a1ee3e60f351dab560903668b58ed383b7337a238249d7a945c4c11e2552f9fa"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.10.0-rc/aarch64-apple-darwin/zenoh-backend-filesystem-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "dcc8698738cf86e47c1ccafdb4403242ae2dfb24a690af24c4aa046004fb8701"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_fs.dylib"
  end
end
