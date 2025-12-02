cask "command-shelf" do
  version "1.5.0"
  # Replace the line below with the output of the shasum command (see step 4)
  sha256 "e6cc600bd899d7562f074c3121be4946125076a37ee3550eb1bf3c525107d265"

  url "https://github.com/tharunShiv/command-shelf/releases/download/v#{version}/Command.Shelf-#{version}-arm64.dmg"

  name "Command Shelf"
  desc "Your personal command center"
  homepage "https://github.com/tharunShiv/command-shelf"

  # CRITICAL: Verify the name inside your DMG matches this exactly
  app "Command Shelf.app"
  
  caveats <<~EOS
    "Command Shelf" is not notarized by Apple. If you see a "Damaged" error,
    run this command in your Terminal to allow it to run:

    xattr -cr "/Applications/Command Shelf.app"
  EOS
end
