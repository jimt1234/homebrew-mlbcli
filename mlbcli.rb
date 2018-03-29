HOMEBREW_MLBCLI_VERSION = "0.1.0".freeze
HOMEBREW_MLBCLI_NAME = "mlbcli-#{HOMEBREW_MLBCLI_VERSION}-darwin-amd64".freeze
HOMEBREW_MLBCLI_SHA = "b5deb09193497d4e87406bcfef1f8ea63ff8eecc38aa54fa3d2f8ef4810abc6e".freeze

class Mlbcli < Formula
  desc "Command-line tool to display MLB scoreboards"
  homepage "https://github.com/jimt1234/mlbcli"
  url "#{homepage}/releases/download/v#{HOMEBREW_MLBCLI_VERSION}/mlbcli-#{HOMEBREW_MLBCLI_VERSION}-darwin-amd64.zip"
  version HOMEBREW_MLBCLI_VERSION
  sha256 HOMEBREW_MLBCLI_SHA

  def install
    mv "#{buildpath}/#{HOMEBREW_MLBCLI_NAME}", "#{buildpath}/mlbcli"
    bin.install "mlbcli"
  end

  test do
    `mlbcli -h`
  end
end
