

cask "geniee" do
  version "v0.1.1"
  sha256 "e28c9095898925f5e32d7119e4b06f910fd624146c5ce7b94b81397c3e43f24f"

  url "https://github.com/geniee-ai/geniee-cli/releases/download/v0.1.1/geniee_0.1.1_darwin_amd64"
  name "geniee"
  desc "A command-line tool to communitate with ChatGPT"
  homepage "https://geniee.io"

  pkg "geniee_0.1.1_darwin_amd64"

  uninstall pkgutil: [
    "com.bps.matrix.pkg"
  ]
end