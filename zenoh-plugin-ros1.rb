class ZenohPluginRos1 < Formula
  desc "Eclipse zenoh ros1 plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-ros1-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "1bf7ce7af9d19b319ac3d619086184921335d70b20470facad70f8e180d6bdad"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-ros1-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "318dc4ddbd5cc3acff5b61e063abf7bd35265501151ce78fcd7901efe8ba5a13"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_ros1.dylib"
  end
end
