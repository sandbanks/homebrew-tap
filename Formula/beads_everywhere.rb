class BeadsEverywhere < Formula
  desc "Universal multi-repo task hub & web dashboard for Beads"
  homepage "https://github.com/sandbanks/beads-everywhere"
  url "https://github.com/sandbanks/beads-everywhere/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "185b32f48b50e471f2f77160a0c72472ed45d7a0f265a669c4fdbb27e17652b2"
  license "MIT"

  bottle do
    root_url "https://github.com/sandbanks/beads-everywhere/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "de810cb128707852c23b4d3d1acc9a7b3e826211fa479ed41a850c3485f73233"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "621e433fea65a4590eb86f71561d9b5c41aeba0e22396c103a3699a66b212210"
    sha256 cellar: :any_skip_relocation, arm64_linux: "1429b602ca05ce49c65031d84b4d96139734a9eaaceaaedf8954e3c3cd8198c0"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/be"
    bin.install_symlink bin/"be" => "beads-everywhere"
  end

  test do
    system bin/"be", "--help"
  end
end
