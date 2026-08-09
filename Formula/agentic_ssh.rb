class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "c1b0a6a494e8ef93273bf249616442de3d3fae9358f09ce3a604f4efecbe6419"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "959aea4e309c8b23b24e815fa5403717d171158d975ecd6a27eae0bd7401b2e9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b39ef687fa972f4e94bf0f2184535558b2bfdd0808f297212a22be556e36f899"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
