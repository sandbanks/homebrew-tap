class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "ab3ab7160224b824dfb434775ee7ee818d977bd29a5fc78603bc2812605df379"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.6.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c0ade914eefdfc3784e016c04e7ff944fbb0f573a8abbdf747eabe44977f3927"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "72c61849049dcf05bd2d616b8caba1d1e6404e648faed6d7b402af61efedfa7a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
