class Vpsguard < Formula
  desc "Audit, harden, and monitor the security of a Linux VPS"
  homepage "https://github.com/salamancacm/vpsguard"
  version "0.4.1"
  license "MIT"

  # vpsguard refuses to run on anything but Linux (see requireLinux() in
  # its own source), so a formula that let macOS install a binary that
  # can never execute there would be actively misleading. This only
  # supports Homebrew-on-Linux ("Linuxbrew").
  depends_on :linux

  on_arm do
    url "https://github.com/salamancacm/vpsguard/releases/download/v0.4.1/vpsguard-linux-arm64"
    sha256 "2cdb5861dda91bb35dc2ec4742f6937b513521eab97ea2728fa5104aa2d7cbea"
  end

  on_intel do
    url "https://github.com/salamancacm/vpsguard/releases/download/v0.4.1/vpsguard-linux-amd64"
    sha256 "054ea3ac56b3e652df1ce692ff96c4b1ad1e9f83ccd4934c92622f8e5855da5e"
  end

  def install
    bin.install Dir["vpsguard-linux-*"].first => "vpsguard"
  end

  test do
    assert_match "vpsguard version", shell_output("#{bin}/vpsguard --version")
  end
end
