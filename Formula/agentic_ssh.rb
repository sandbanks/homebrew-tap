class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.10.tar.gz"
  sha256 "75e7a8aaab96b6adaa5f3d091087ed6fcf602e1b4b55c5c285e4b362124e1fb2"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.10"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "47d4480573228779b6225f56d9d6454c874f4a94ef29d210ccab3dbb555393d7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6315c9005abd7e84ada4fbad0e32e392a91536fd46e0d5a86c016cf7a620d673"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
