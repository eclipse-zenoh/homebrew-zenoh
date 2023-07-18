class ZenohPluginDDS < Formula
  desc "Eclipse zenoh dds plugin"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.7.2-rc/x86_64-apple-darwin/zenoh-plugin-dds-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "83dc4903ad374737a15d54a4e670e3bd63f7f7b9a1aa832d6dab3321b3882e87"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.7.2-rc/aarch64-apple-darwin/zenoh-plugin-dds-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "82adbe988067a9d7a4deb29b70e262ebc83af65bfbbe24e5d5584ce6e7e195a5"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_dds.dylib"
  end
end
