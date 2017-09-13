class Jsenv < Formula
  desc ""
  homepage ""
  url 'https://github.com/johnlayton/farmclose/raw/master/dist/jsenv-0.1.1.tar.gz'
  sha256 "a2bb9cc443cc52e9313dc9e5f1642233d15c25d2f6e9998ccfa9554aae10c9a7"

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
