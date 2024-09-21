class Passgen < Formula
  desc "Generate password"
  homepage "https://risaton.net"
  url "https://risaton.net/releases/passwordGenerator-0.1.tar.gz"
  sha256 "ceecc4a8c3d43a864d391798ad9b8767d8fb52ce45b070a39f6fd673ed30cd2d"
  license "BSD-3-Clause"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
