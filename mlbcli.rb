require 'formula'

class Mlbcli < Formula
  desc 'Command-line tool to retrieve MLB scores'
  homepage 'https://github.com/jimt1234/mlbcli'
  version '0.1.0'
  url 'https://github.com/jimt1234/mlbcli/releases/download/v#{version}/mlbcli-#{version}-darwin-amd64.zip'
  sha256 'b5deb09193497d4e87406bcfef1f8ea63ff8eecc38aa54fa3d2f8ef4810abc6e'

  def install
    bin.install Dir['*']
  end

  test do
    `go test`
  end

end