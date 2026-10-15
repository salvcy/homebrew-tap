cask "meowse" do
  version "1.2.7"
  sha256 "274ba8a5e8ba786ff9810431d73ff6d3f9e5def58d0da5ed2f9bb7a944e5680a"

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
