class Hop < Formula
  desc "Interact with Hop in your terminal"
  homepage "https://hop.io"
  url "https://github.com/hopinc/cli/archive/v0.2.34.tar.gz"
  sha256 "420158f462620198bfffbf193c013670ad4bf29a2e907b045af37af83124a19d"
  license "MPL-2.0"
  head "https://github.com/hopinc/cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    generate_completions_from_executable(bin/"hop", "completions")
  end
end
