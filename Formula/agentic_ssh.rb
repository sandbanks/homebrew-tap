class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a5b843b874b0d5c07dc6ea1eac49b3b39eb61d83abe523a2c9bbc43c67c20bd6"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.6.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e3e12bbe78352d8e32d567c4a442b1dc1a80ec02aef40a9ca9c8ef88c370719e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b9615690759e243440cb7a4afdd4de3b45b715f046f7aea19704d6a4c8e7b5a5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
