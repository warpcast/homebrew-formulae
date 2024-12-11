require 'formula'

AWSH_VERSION = '1.0.0'

class Awsh < Formula
  homepage 'https://github.com/warpcast/awsh'
  url "https://github.com/warpcast/awsh/releases/download/v#{AWSH_VERSION}/awsh"
  sha256 "6c77ec1c5c0195905df14d309fa1b53fc226a4432ae82bf6fbb088cbdb60d717"

  depends_on 'awscli'
  depends_on 'fzf'

  def install
    bin.install 'awsh' => 'awsh'
  end
end
