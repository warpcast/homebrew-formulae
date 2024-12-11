require 'formula'

AWSH_VERSION = '1.0.2'

class Awsh < Formula
  homepage 'https://github.com/warpcast/awsh'
  url "https://github.com/warpcast/awsh/releases/download/v#{AWSH_VERSION}/awsh"
  sha256 "6ec863dd2ec0851577378546ac96bdd72c2e152b7efc8c9be69c252e065f4eb3"

  depends_on 'awscli'
  depends_on 'fzf'

  def install
    bin.install 'awsh' => 'awsh'
  end
end
