cask "meowse" do
  version "1.2.6"
  sha256 "f7085c99b7d165c9364ef6c81ffdf5a68838e369ff6a550ec97468e22ce1958d"

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
