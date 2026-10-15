cask "meowse" do
  version "1.2.8"
  sha256 "29b70b5b901cd879680e3759fb713b6aa11b650489706065971751a2f976b8f4"

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
