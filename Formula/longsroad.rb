class Longsroad < Formula
  desc ''
  homepage 'https://github.com/johnlayton/longsroad'
  url 'https://github.com/johnlayton/longsroad/archive/v0.0.0.tar.gz'
  sha256 '732f00d4ab13b732d5276dd10366324051f6d93d41e3321d7c04c76f23392b6c'

  def install
    inreplace 'libexec/dmenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
  EOS
  end

end
