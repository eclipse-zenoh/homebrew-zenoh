class ZenohBackendFilesystem < Formula
  desc "Eclipse zenoh filesystem backend"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.7.2-rc/x86_64-apple-darwin/zenoh-backend-filesystem-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "abfa76314cf89f3dae36c4e1fc358682ded9233ec75a771de5ce933657f74e03"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.7.2-rc/aarch64-apple-darwin/zenoh-backend-filesystem-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "56b2b22edddb032890894fe03293b3c5f36e8bbb048f81ae41f5db511b784d34"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_fs.dylib"
  end
end
