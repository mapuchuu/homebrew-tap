cask "longyan-reader" do
  version "1.1.1"
  sha256 "5f7eb066f10e514319aba2dc58fe57ddcbddae2d160375b991b966082914e2e0"

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
