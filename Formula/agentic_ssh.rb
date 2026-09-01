class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "f694066992658cdf46f32fd8a9a113090fff33c46076105657c3215e7a3ca215"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.5.3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a31d42a7e4b191264efc047dc997da57d36c2c33daf262d473d74a44019c5dbc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "547c3565f086baae748c163903d9e88186e1ef94793fc22cb4d3b8f2f4386f43"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
