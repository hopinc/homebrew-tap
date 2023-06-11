class Hop < Formula
  desc "Interact with Hop in your terminal"
  homepage "https://hop.io"
  url "https://github.com/hopinc/cli/archive/v0.2.50.tar.gz"
  sha256 "2924e0d5142c5071231f86bc100b2dc7ef832949967e0df3f4464c2fed397604"
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
