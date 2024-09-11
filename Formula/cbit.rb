class Cbit < Formula
  desc "cbit 프로젝트입니다."
  homepage ""
  url "https://github.com/0Chord/cbit/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "faf4b6b148c010909c30b07c4b5705b612e1761ce1bf77837a35380f6fc997e4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "cbit version 1.0.5", shell_output("#{bin}/cbit --version")
    system "false"
  end
end
