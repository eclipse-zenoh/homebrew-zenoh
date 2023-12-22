class Zenoh < Formula
  desc "Eclipse Zenoh (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh/0.10.1-rc/x86_64-apple-darwin/zenoh-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "13fbad779bda59263b3137dcc0c5c3d79735456fb0ead508833812b61ad3dc17"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh/0.10.1-rc/aarch64-apple-darwin/zenoh-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "8af89b8bf1d20d9d0bd5d440ff4c0532d3ab1e360e056625b5e434f31e0aeb75"
    end
  end

  depends_on "zenohd"
  depends_on "zenoh-plugin-rest" => :recommended
  depends_on "zenoh-plugin-storages" => :recommended
  depends_on "libzenohc" => :recommended

  def install
    File.open('zenoh.1', 'w') { |file| file.write(`zenohd --help`) }
    man1.install "zenoh.1"
  end
end
