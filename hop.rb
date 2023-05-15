class Hop < Formula
  desc "Interact with Hop in your terminal"
  homepage "https://hop.io"
  url "https://github.com/hopinc/cli/archive/v0.2.43.tar.gz"
  sha256 "54b05ebc2b255cc4f2feeab5f6471a7dcae64b54527352e118bd552b5d531592"
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
