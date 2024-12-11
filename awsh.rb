require 'formula'

AWSH_VERSION = '1.0.1'

class Awsh < Formula
  homepage 'https://github.com/warpcast/awsh'
  url "https://github.com/warpcast/awsh/releases/download/v#{AWSH_VERSION}/awsh"
  sha256 "7c1256931185643c0458973e113305f725912ef271c2f402a5e28ccfed4f74bc"

  depends_on 'awscli'
  depends_on 'fzf'

  def install
    bin.install 'awsh' => 'awsh'
  end
end
