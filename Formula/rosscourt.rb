class Rosscourt < Formula
  desc ''
  homepage 'https://github.com/johnlayton/rosscourt'
  url 'https://github.com/johnlayton/rosscourt/archive/v0.0.0.tar.gz'
  sha256 '33162553beab0e7b049cd99087eeeb420b664357729e2368fa8b47f755a747a1'

  def install
    inreplace 'libexec/dmenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
  EOS
  end

end
