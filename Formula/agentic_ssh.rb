class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.3.6.tar.gz"
  sha256 "96d0f8882f5c7cd2699dc7c19323c2196afe0dd4d8991216a81f4bb4c9a3bd42"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.3.6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5ad05ed5b96b1ed157bf1daef3d6ec486b489b9da46f4b2796594f4c79a68a88"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "15f6efeabca5641301b7644959c9d966c6bd5baf37fab6e89580a4005b21374a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
