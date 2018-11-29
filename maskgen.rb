class Maskgen < Formula
  desc "Maskgen JT"
  homepage "https://github.com/rwgdrummer/maskgen"
  url "https://github.com/rwgdrummer/maskgen_installer/archive/1.0.tar.gz"
  sha256 "36a4a66f21ee72ad349c65305dc91d9852bf4c80"
  head "https://github.com/rwgdrummer/maskgen.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "libpng"
  depends_on "git"

  def install
    ENV.prepend_path "PATH", Formula["python@2"].opt_libexec/"bin"
    mkdir "build" do   
      system "git", "clone", "https://github.com/rwgdrummer/maskgen_gan_challenges.git"
    end
  end

  test do
    system "echo", "Hello!"
  end
end
