class Cbit < Formula
  desc "cbit 프로젝트입니다."
  homepage ""
  url "https://github.com/0Chord/cbit/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "d6a356ccbc3e5063f5f7eadb21f273464a6d5f719835e8efaa371291372e0042"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "cbit version 1.0.6", shell_output("#{bin}/cbit --version")
    system "false"
  end
end
