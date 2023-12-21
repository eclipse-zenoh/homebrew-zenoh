class ZenohPluginWebserver < Formula
  desc "Eclipse zenoh webserver plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-webserver-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "05402e72cebf27e6b9aa5bc7f0693f9f092bcfd30a25148ab9bc73f7a9d55001"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-webserver-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "49b6bbfcc3f2879e4e0dc0ce8aeba999260fe2290ce867d4cbd1a1b74848a84c"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_webserver.dylib"
  end
end
