class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "21c4b8cbc7c707edc5499c25d721c53948309f4b218627c95c37f7f3d94bd8ee"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.3.7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4a7c3f1db2ba3d78e93cab2a838f2e6b245e184b7238aeedc498c6b0eab273e9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8e05980f944e50df7bddcf6559561b9d261425bae5b7e80a27a8231090dd7137"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
