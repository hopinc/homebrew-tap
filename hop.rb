class Hop < Formula
  desc "Interact with Hop in your terminal"
  homepage "https://hop.io"
  url "https://github.com/hopinc/cli/archive/v0.2.56.tar.gz"
  sha256 "4392984140e3acffb0d2d561e529836ca4085c9b44a824a7147fd0e82035de5f"
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
