class AgenticSsh < Formula
  desc "MCP server for detached background operations and secure SSH execution"
  homepage "https://github.com/sandbanks/agentic_ssh"
  url "https://github.com/sandbanks/agentic_ssh/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "51ac97115eaf592f1ba3981b9a3311bd1d25914652c46235242bcaab2899aeb8"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/agentic_ssh/releases/download/v0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1cc6e590345ddcad79a658f4ca86a30743d8e3c198ac4fd6dce68eb58bdfe4ba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "332712808c4ad8fd1d55e655336b05a04d3027d801a12e0c12e3c478a0e49d2e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"agentic_ssh", "--help"
  end
end
