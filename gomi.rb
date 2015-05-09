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

    depends_on :arch => :intel

    def install
        system 'mv', "gomi_darwin_#{KIND}", 'gomi'
        bin.install 'gomi'
        system "make install"
        zsh_completion.install "completions/zsh/_gomi"
    end

    def caveats; <<-EOS.undent
        Welcome to gomi
        EOS
    end
end
