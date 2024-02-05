class ZenohBackendFilesystem < Formula
  desc "Eclipse zenoh filesystem backend"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.10.1-rc/x86_64-apple-darwin/zenoh-backend-filesystem-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "b41d515362b953fb6a83b647c9a35699ea026f04e094273267bd40739f135455"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-backend-filesystem/0.10.1-rc/aarch64-apple-darwin/zenoh-backend-filesystem-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "b3a5a51000f4e2b3dab02cbe9db0a5e078a50222773842614c012fe177962228"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-storages"

  def install
    lib.install "libzenoh_backend_fs.dylib"
  end
end
