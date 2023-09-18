class Hop < Formula
  desc "Interact with Hop in your terminal"
  homepage "https://hop.io"
  url "https://github.com/hopinc/cli/archive/v0.2.54.tar.gz"
  sha256 "266f2d3ee770ae76eefa8a27f3579f034a51d65372692a07dc46f14f9a9df2a4"
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
