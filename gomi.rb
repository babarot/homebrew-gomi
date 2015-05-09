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

    def install
        system 'mv', "gomi_darwin_#{KIND}", 'gomi'
        bin.install 'gomi'
        system "curl -L https://raw.githubusercontent.com/b4b4r07/gomi/master/completions/zsh/_gomi >_gomi"
        zsh_completion.install "_gomi"
        system "curl -L https://github.com/sindresorhus/osx-trash/releases/download/1.0.0/trash.zip -o trash.zip"
        system "unzip trash.zip"
        bin.install 'trash' => '/usr/local/binosx-trash'
    end

    def caveats; <<-EOS.undent
        Welcome to gomi
        EOS
    end
end
