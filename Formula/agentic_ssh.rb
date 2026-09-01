class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "15906b5169471cb0249c45779350ae6ca3cb2f92864d6c773191810a9afcf406"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.5.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fe1f9a68633801442dccc38e63fb81a1f2323a43c66412ad6e5f95a77bff0e19"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fc8b46b242c723d98b084f190cc0cc640bd9333db5ffab70792192b2b22b057e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
