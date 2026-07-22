class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "5ee72663dd4409c05d811152364695e4793d32e5d7856550929911079a88dc0d"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "586f6bd7e3eb1ad312cfd7d711a475278f8d3400946d54abac35a1bb77bfdf3a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d25eca161d3ed91d5a23b41c0645aef794fa3bc6acc2377b0abdf99fdaabb160"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
