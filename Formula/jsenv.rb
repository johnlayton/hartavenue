class Jsenv < Formula
  desc ""
  homepage ""
  url "https://github.com/johnlayton/farmclose/blob/master/dist/jsenv-0.1.1.tar.gz"
  sha256 "ed4bd7f6f50a37d59e1d7a27f725406fdaf9c4de79728851f8b7aef1c452a95f"

  # depends_on "cmake" => :build

  def install
    prefix.install ["bin"]
  end

  test do
  end
end
