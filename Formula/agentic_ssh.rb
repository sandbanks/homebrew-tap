class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "f7e5141855dcedca557013615b4d62dfbbbdee344bcc27646c2fd68d28beccc2"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "22b5956c41ee17948d09e19e9e763efe36f5c59ff41069c35dc7b084928d9835"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "85c401552f8750b9240f0d42c874122ee982a56c8827c4b71c04cc0aca6aaca1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
