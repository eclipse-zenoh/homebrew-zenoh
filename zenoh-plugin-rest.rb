class ZenohPluginRest < Formula
  desc "Eclipse zenoh http plugin (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh/0.10.0-rc/x86_64-apple-darwin/zenoh-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "4fad99c4da5f97fc631718700c0f79727405d73007d0fd12a84abc258e1dae89"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh/0.10.0-rc/aarch64-apple-darwin/zenoh-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "88852080e46d992312d678f3d0f8e5ef564d968280d114a2e7b57538f0166498"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_rest.dylib"
  end
end
