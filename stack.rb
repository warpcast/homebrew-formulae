require 'formula'

STACK_VERSION = '0.0.1'
STACK_REPO_URL = 'https://github.com/warpcast/stack'

STACK_OS = OS.mac? ? 'darwin' : 'linux'
STACK_ARCH = Hardware::CPU.arm? ? 'arm' : 'x'

STACK_EXECUTABLE = "stack-#{STACK_OS}-#{STACK_ARCH}64"

class Stack < Formula
  homepage STACK_REPO_URL
  url "#{STACK_REPO_URL}/releases/download/v#{STACK_VERSION}/#{STACK_EXECUTABLE}"

  def install
    bin.install STACK_EXECUTABLE => 'stack'
  end

  test do
    system "stack", "--help"
  end
end
