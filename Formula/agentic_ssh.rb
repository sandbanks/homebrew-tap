class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "9ab9cb4889c43c1aa1235843d4ad6eaf470707c95dded0db805cf74fcbd823bb"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.5.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "82bca517704a537066f1af6c9dc1bb71b784ef9f264dcd2c5f826eaec0dc523a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b47da35e4be6ae43b39c47fbe662cfa40f70aeabbc47b9c36b877a0a6d1ff8be"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
