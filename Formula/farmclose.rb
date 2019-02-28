class Farmclose < Formula
  desc ''
  homepage 'https://github.com/johnlayton/farmclose'
  url 'https://github.com/johnlayton/farmclose/archive/v0.0.0.tar.gz'
  sha256 'eba9fc62ee6d9a0d802962a954c6d15794a8b938ab2d0d317d40d777cc48cb2c'

  def install
    inreplace 'libexec/jsenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS
    To use Homebrew's directories rather than ~/.jsenv add to your profile:
    export JSENV_ROOT=#{var}/jsenv

    To enable shims and autocompletion add to your profile:
      if which jsenv > /dev/null; then eval "$(jsenv init -)"; fi
  EOS
  end

end
