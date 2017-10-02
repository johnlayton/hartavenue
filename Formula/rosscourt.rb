class Rosscourt < Formula
  desc ""
  homepage ""
  url 'https://github.com/johnlayton/farmclose/raw/master/dist/jsenv-0.1.1.tar.gz'
  sha256 "33162553beab0e7b049cd99087eeeb420b664357729e2368fa8b47f755a747a1"

  def install
    inreplace 'libexec/dmenv', '/usr/local', HOMEBREW_PREFIX
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
