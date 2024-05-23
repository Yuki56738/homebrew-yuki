class Iamyuki < Formula
  desc "Print I am Yuki!"
  homepage "https://risaton.net"
  url "https://risaton.net/iamyuki/iamyuki-0.1.tar.gz"
  sha256 "a6941dc5a97c18b95f23eb9320a96191e3bac028b105a391b5acd757f8424a00"
  license "BSD-3-Clause"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test iamyuki`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
