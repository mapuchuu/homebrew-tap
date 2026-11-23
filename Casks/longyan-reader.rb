cask "longyan-reader" do
  version "1.1"
  sha256 "0d22eb7401655eb7d04fe203fa300695ca58a82662fa18e000b17a17bbb0f7e8"

  url "https://github.com/mapuchuu/longyan-reader/releases/download/v#{version}/LongyanReader-#{version}.zip"
  name "Longyan Reader"
  desc "Pop-up Chinese reader that explains each word in its sentence"
  homepage "https://longyan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Longyan Reader.app"

  uninstall quit: "com.mapuchuu.longyanreader"

  zap trash: [
    "~/Library/Application Support/LongyanReader",
    "~/Library/Caches/com.mapuchuu.longyanreader",
    "~/Library/Caches/LongyanReader",
    "~/Library/HTTPStorages/com.mapuchuu.longyanreader",
    "~/Library/HTTPStorages/com.mapuchuu.longyanreader.binarycookies",
    "~/Library/Logs/LongyanReader",
    "~/Library/Preferences/com.mapuchuu.longyanreader.plist",
  ]
end
