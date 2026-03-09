class <no value> < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "<no value>"

  def post_install
    system "mortar version"
  end

  test do
    system "mortar version"
  end
end
