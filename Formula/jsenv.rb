class Jsenv < Formula
  desc ""
  homepage ""
  url 'https://github.com/johnlayton/farmclose/raw/master/dist/jsenv-0.1.1.tar.gz'
  sha256 "bb8ba4437cd19a17f438493577d0c750395d9759366903c041466f7a7cc70b3c"

  def install
    inreplace 'libexec/jsenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To use Homebrew's directories rather than ~/.jsenv add to your profile:
    export JSENV_ROOT=#{var}/jsenv

    To enable shims and autocompletion add to your profile:
      if which jsenv > /dev/null; then eval "$(jsenv init -)"; fi
  EOS
  end

end
