cask "command-helper" do
  version "1.3.4"
  # Replace the line below with the output of the shasum command (see step 4)
  sha256 "56c269218d5f689ae4e07bf655abebf6d0a0210f11a246487e2276d841032e3d"

  url "https://github.com/tharunShiv/command-helper/releases/download/v#{version}/Command.Helper-#{version}-arm64.dmg"

  name "Command Helper"
  desc "Command Helper"
  homepage "https://github.com/tharunShiv/command-helper"

  # CRITICAL: Verify the name inside your DMG matches this exactly
  app "Command Helper.app"
  
  caveats <<~EOS
    "Command Helper" is not notarized by Apple. If you see a "Damaged" error,
    run this command in your Terminal to allow it to run:

    xattr -cr "/Applications/Command Helper.app"
  EOS
end
