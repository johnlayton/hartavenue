class Jsenv < Formula
  desc ""
  homepage ""
  url "https://github.com/johnlayton/farmclose/blob/master/dist/jsenv-0.0.2.tar.gz?raw=true"
  sha256 "4f40c262998acb1a041eb638cd511c0b16449be9c67e80fb49d338e1bc5566fb"

  # depends_on "cmake" => :build

  def install
    prefix.install ["bin"]
  end

  test do
  end
end
