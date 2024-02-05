class ZenohPluginDds < Formula
  desc "Eclipse zenoh dds plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-dds-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "b406ca177b846480cc2c38492c1fb4eeff68d17faef4dc38e20f11c2ca37a5d9"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-dds-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "f72e66c2eaff094ed276dccd6c1b904d4297ee8e636059ff16f021174dcbe4bc"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_dds.dylib"
  end
end
