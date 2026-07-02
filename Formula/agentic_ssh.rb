class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "2ace9308bc2fbed5f8a546cb942bfbbc2b7d6680914789bc638f52239dc95b1c"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.3.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c1316ebd6c81eb499cdf6caad9392a15659ad76afb4a8517cfcb769f3285f9a6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "db08d91cc1e380c9e5db2dec6f321aba7a711395cf543460edfcc19e992f94cf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
