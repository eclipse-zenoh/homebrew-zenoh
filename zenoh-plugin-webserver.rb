class ZenohPluginWebserver < Formula
  desc "Eclipse zenoh webserver plugin"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.10.0-rc/x86_64-apple-darwin/zenoh-plugin-webserver-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "b9e8e6e8f9a15a660cb5b57026a28a7d833c740a15f54221f985fb499d08e96d"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.10.0-rc/aarch64-apple-darwin/zenoh-plugin-webserver-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "a2dc4d24d01b5bf933b59d9893ad75f272481c4965759209717d4afb1c0551ed"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_webserver.dylib"
  end
end
