class Maskgen < Formula
  desc "Maskgen JT"
  homepage "https://github.com/rwgdrummer/maskgen"
  url "https://github.com/rwgdrummer/maskgen_installer/archive/1.0.tar.gz"
  sha256 "c4bf331a7d0ca1bdd0bc7f389d8ab667eb4620fb544711b56e68507cfd17a0e9"
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
