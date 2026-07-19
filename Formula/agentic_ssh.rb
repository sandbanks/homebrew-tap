class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "42ec5b1943a32cd7dda4736b42bd887a756b4b81efa56f423ccbbdb2d4b71af5"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d7f72f137eb78017394e0ee02298de94a6895dbe007768f9d1cbad5bc7cf4601"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cbac5038ec0d76319f2f37242a9843fd2ae6a57391edcd72275146628de45c91"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
