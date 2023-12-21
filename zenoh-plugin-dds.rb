class ZenohPluginDDS < Formula
  desc "Eclipse zenoh dds plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-dds-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "55b5ca098092c537d53c33e1cb49610c09942144df37f59708dbfe920b8f1f8a"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-dds-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "d70bcc9198c192353f90f1d8c492a6e22819e929accb5a8e0c3952f4ef9c94c7"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_dds.dylib"
  end
end
