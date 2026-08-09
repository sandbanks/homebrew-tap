class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.8.tar.gz"
  sha256 "f1fb9ac543fb50cdec3e4714b178d42296360c6908b563fe1988f49a212114e7"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5304ca9b22d5a692ffd62d1f388d06a0fbfac459d16b96ac64fa551109c938d8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1c41dd2d25a17d0fa3c0f5761ac1cfff9161d7a529ee7775ab2adf396d6ce108"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
