class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "805e62fd724dd7a94aa6bbdb1af6ee4eb0d4efaae60bef857d81890276831602"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e4cd4760153c151ff53908866e1b83dff1e1edf6702578a6a689d673bfcb2d28"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ae5128beb12639a64458b8bed87b253f9fc8ef1bed80e8cfa6e475b9c4665a25"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
