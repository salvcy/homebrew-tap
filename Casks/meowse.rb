cask "meowse" do
  version "1.4.0"
  sha256 "849151dab85b815c15d91b56794080989f97e5b97b0afa8bd2aca78297e99c84"

  url "https://github.com/salvcy/meowse/releases/download/v#{version}/Meowse.zip"
  name "Meowse"
  desc "Smooth scrolling, scroll direction, acceleration and side buttons for mice"
  homepage "https://meowse.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Meowse.app"

  uninstall quit: "app.meowse.Meowse"

  zap trash: [
    "~/Library/Caches/app.meowse.Meowse",
    "~/Library/HTTPStorages/app.meowse.Meowse",
    "~/Library/Preferences/app.meowse.Meowse.plist",
  ]
end
