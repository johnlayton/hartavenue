class Triststreet < Formula
  desc ''
  homepage 'https://gatling.io'
  url 'https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/3.0.3/gatling-charts-highcharts-bundle-3.0.3-bundle.zip'
  sha256 'e87d347ba6b23277e930d7063d97d8974efac364b172408c481845c35779fdef'

  def install
    prefix.install Dir['*']
  end

  def caveats; <<-EOS
    To use your profile rather that Homebrew's directories add to your profile:
      export GATLING_CONF=~/.gatling/conf
  EOS
  end

  test do
  end
end
