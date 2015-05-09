require "formula"

class Gomi < Formula
  homepage "https://github.com/b4b4r07/gomi"
  version '0.1.4'

  if Hardware.is_64_bit?
    url "https://github.com/b4b4r07/gomi/releases/download/v0.1.4/gomi_darwin_amd64"
    sha1 "3543835615a15d55f4b2899a6f0889ce94d029baebae9ab818d70166e1110fea"
  else
    url "https://github.com/b4b4r07/gomi/releases/download/v0.1.4/gomi_darwin_386.zip"
    sha1 "5f75c79221e73d5aee7c18a67d51dd39384f378fdf7b3a13445578f9ae16f0d4"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gomi'
  end

  def caveats
    msg = <<-'EOF'

    Welcome to gomi

EOF
  end
end
