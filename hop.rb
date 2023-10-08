class Hop < Formula
  desc "Interact with Hop in your terminal"
  homepage "https://hop.io"
  url "https://github.com/hopinc/cli/archive/v0.2.57.tar.gz"
  sha256 "6216f7270e3c2cae77cacaa1d0a46b399759f63962ffbb5987e944b892f2deab"
  license "MPL-2.0"
  head "https://github.com/hopinc/cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    generate_completions_from_executable(bin/"hop", "completions")
  end

  def caveats
    <<~EOS
                   \\
              ,-~~~-\\_
             (        .\    Hop CLI is now installed
      \    / @\___(__--'    Start off by using: hop auth login
       \  /
       hop!
    EOS
  end
end
