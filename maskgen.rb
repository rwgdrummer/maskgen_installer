class Maskgen < Formula
  desc "Maskgen JT"
  homepage "https://github.com/rwgdrummer/maskgen"
  url "https://github.com/rwgdrummer/maskgen_installer/archive/1.0a.tar.gz"
  sha256 "38b5254f3e900efb53484ba35c83d4806e377a2439cb54fbaab1216cd5adc815"
  head "https://github.com/rwgdrummer/maskgen.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "libpng"
  depends_on "git"

  def install
     bin.install "jtinstall"
  end

  test do
    system "echo", "Hello!"
  end
end
