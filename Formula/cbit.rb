# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cbit < Formula
  desc "cbit 프로젝트입니다."
  homepage ""
  url "https://github.com/0Chord/cbit/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0ac00ffe10675caf3fad8601c894ce379d9b3ef50ef8c0a429c8fa24aca8eeff"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "cbit version 1.0.0", shell_output("#{bin}/cbit --version")
    system "false"
  end
end
