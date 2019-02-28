class Triststreet < Formula
  desc ''
  homepage 'https://gatling.io'
  url 'https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/3.0.3/gatling-charts-highcharts-bundle-3.0.3-bundle.zip'
  sha256 'e87d347ba6b23277e930d7063d97d8974efac364b172408c481845c35779fdef'

  def install
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
  EOS
  end

  test do
    system "#{bin}/gatling", "--help"
  end
end
