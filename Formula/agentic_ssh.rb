class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "a6fd96bc717caf5d7d3a65e881dbd5956f87e282556570cd6fd7d0bbf8d555ac"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c000a50740fc2f5db63eee3066a07bf37bc40fee10c48d6a77c5e430c02eede9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a437730c63149e07c7e89999ac346538c0376eab2d1a81487651c2bd8af1371a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
