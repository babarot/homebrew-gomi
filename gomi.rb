require "formula"

class Gomi < Formula
    homepage "https://github.com/b4b4r07/gomi"
    version '0.1.4'

    if Hardware.is_64_bit?
        url "https://github.com/b4b4r07/gomi/releases/download/v0.1.4/gomi_darwin_amd64"
        sha1 "5cbbc80f7f97557f2004ce475546f35c78bb79d1"
        KIND="amd64"
    else
        url "https://github.com/b4b4r07/gomi/releases/download/v0.1.4/gomi_darwin_386"
        sha1 "53450d3023a9d136d9748bfcdc881d461b862748"
        KIND="386"
    end
    url "https://github.com/sindresorhus/osx-trash/releases/download/1.0.0/trash.zip"
    sha1 "8861994d946e627ffd6c4b72265fa86f5ba2c821"

    def install
        system 'mv', "gomi_darwin_#{KIND}", 'gomi'
        bin.install 'gomi'
        zsh_completion.install "completions/zsh/_gomi"
        bin.install 'trash' => 'osx-trash'
    end

    def caveats; <<-EOS.undent
        Welcome to gomi
        EOS
    end
end
