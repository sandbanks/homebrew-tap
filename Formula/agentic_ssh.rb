class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "e87397f6f761696d37308fcfb0444758deb103d6362870a9d41f275a807f6ca4"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.5.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "98685f7a7a58aeea3d81a873a71750b5be1ac8274e8b7a1ed87ccc590bdbf240"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6e12b41c225122732f54a0e76ffb8b291c72e7e061b9de0b85f1c23de7092f21"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
