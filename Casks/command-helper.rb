cask "command-helper" do
  version "1.1.0"
  # Replace the line below with the output of the shasum command (see step 4)
  sha256 "61f2db76298541f88dde6c97905b48caa08e46fe6bc9c0b0849763f2c9c8e352"

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
