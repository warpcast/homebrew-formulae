require 'formula'

AWSH_VERSION = '1.0.0'

class Awsh < Formula
  homepage 'https://github.com/warpcast/awsh'
  url "https://github.com/warpcast/awsh/releases/download/v#{AWSH_VERSION}/awsh"

  depends_on 'awscli'
  depends_on 'fzf'

  def install
    bin.install 'awsh' => 'awsh'
  end
end
