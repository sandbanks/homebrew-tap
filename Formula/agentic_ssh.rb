class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "f447958fe1dafe9f1113a965a27dc6094e102c374340ec208316cf2ce3d18d09"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "42f8e6cfb78cef699bfa330c4e3c0437a196c67314ec13cfd13d0011315178fd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c470c9bd7e5da9ab464518bc8e114c825071300502e6c0f5d746053c8f01b12d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
