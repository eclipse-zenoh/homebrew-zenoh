class ZenohPluginRest < Formula
  desc "Eclipse zenoh http plugin (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.6.0-beta.1"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh/0.6.0-beta.1/x86_64-apple-darwin/zenoh-0.6.0-beta.1-x86_64-apple-darwin.zip"
      sha256 "b09a881b9ffdc76db64bc67d1bf064858e696ea09c5f3b5a2c932edc1bb65220"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh/0.6.0-beta.1/aarch64-apple-darwin/zenoh-0.6.0-beta.1-aarch64-apple-darwin.zip"
      sha256 "95ab32b00544519c1eb7de0c7e5ac638e29e6adb04d6c1356b47e265b28bedc7"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzplugin_rest.dylib"
  end
end
