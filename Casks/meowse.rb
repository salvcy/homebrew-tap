cask "meowse" do
  version "1.3.0"
  sha256 "c4b47cc4637cc55bfb1a8ca96830603196e5cac81bbbf4b0c833064de0b475f8"

  url "https://github.com/salvcy/meowse/releases/download/v#{version}/Meowse.zip"
  name "Meowse"
  desc "Smooth scrolling for mouse wheels, with keep awake and cursor wiggling"
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
