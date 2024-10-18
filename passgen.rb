class Passgen < Formula
  desc "Generate random password"
  homepage "https://risaton.net"
  url "https://risaton.net/releases/passwordGenerator-0.1.tar.gz"
  sha256 "2a510fa72b2db123ff5fb02b57c88a2b7f2ee6ddedc5a17432b17bb77f7eaab9"
  license "BSD-3-Clause"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
