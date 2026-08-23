class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.9.tar.gz"
  sha256 "0704fad337ee00dcf2da3c939e4d8ed1fac3859bb353e698d4984166ff182a6b"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f94efa46741fbbb4c82f9bd0a2e6bed708bbb5463a0090ed59b04f827a49ebef"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "75e9e53629a60847685fc559b51fa53e8814988685a05adcee409e6f3818566b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
