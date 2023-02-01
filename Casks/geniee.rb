
cask "geniee" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"

  on_intel do
    sha256 "34f1a3d12cb9d2877367743b8171f56f8ce6e5e8ec21a7b45210e45b3e40a711"
  end
  on_arm do
    sha256 "108c87119d479e83c2012f15d0fabd121490167e55f3356247bcf538ae633850"
  end

  url "https://github.com/geniee-ai/geniee-cli/releases/download/v#{version}/geniee_#{version}_darwin_#{arch}"
  name "geniee"
  desc "A command-line tool to communitate with ChatGPT"
  homepage "https://github.com/geniee-ai/geniee-cli"

  binary "geniee_#{version}_darwin_#{arch}", target: "geniee"

  def install
    bin.install "geniee_#{version}_darwin_#{arch}" => "geniee"
  end

  postflight do
    set_permissions "#{staged_path}/geniee", "0755"
  end

end