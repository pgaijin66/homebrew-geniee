
cask "geniee" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"

  on_intel do
    sha256 "e28c9095898925f5e32d7119e4b06f910fd624146c5ce7b94b81397c3e43f24f"
  end
  on_arm do
    sha256 "c9a6e3061dd4f9bf19933176bba09a23703fc550ec56801808b8630829ed45bc"
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