class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "08b0845f7614e4d165fd66943be01158167d61609046d2f23d12c4121fdedf8c"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.5.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d9ead70c81f52ef28e34bed57bf919d5e291e8b071dadbc559b62b7aa203905e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "888a7c3f61d128e0fdf9fa159a096de10c12849378016d670eae827195aedb9e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
