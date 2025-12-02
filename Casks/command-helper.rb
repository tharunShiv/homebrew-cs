cask "command-helper" do
  version "1.4.0"
  # Replace the line below with the output of the shasum command (see step 4)
  sha256 "d3bb20566b427dc1755651e000980f3bda37c5c152f368c60d1d11159a0b25d4"

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
