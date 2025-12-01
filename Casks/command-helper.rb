cask "command-helper" do
  version "1.2.0"
  # Replace the line below with the output of the shasum command (see step 4)
  sha256 "cb7393ec7649b1cc04cf38800c543e056f15ea8e6b7d522f3b9f4211e8d43956"

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
