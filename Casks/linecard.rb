cask "linecard" do
  version "0.4.10"
  sha256 "a4492ef87fb2f9ba7ed56e16e7db169bfb897760a8d55abb458a9a54f85f6292"

  url "https://github.com/paintballrefjosh/linecard/releases/download/v#{version}/Linecard_#{version}_universal.dmg"
  name "Linecard"
  desc "SSH, Telnet, Serial, RDP and VNC client with an end-to-end encrypted, synced connection tree"
  homepage "https://github.com/paintballrefjosh/linecard"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Linecard.app"

  zap trash: [
    "~/Library/Application Support/dev.linecard.app",
    "~/Library/Caches/dev.linecard.app",
    "~/Library/WebKit/dev.linecard.app",
  ]
end
