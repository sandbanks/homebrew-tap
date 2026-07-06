class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "daaee2bd73974397f622f036d72abf87b2c12827e341da27491295a282c5b79a"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.3.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3a27cfec0fe64138e745e174dd13a3a9037e83b0b6f4785452818e5b6875b014"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d5ca08d668d76177600515e54f3edc5c0c16b3c321872793de6f04d64fcca874"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
