require 'formula'

class Maven <Formula
  url 'http://www.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.tar.gz'
  head 'http://www.apache.org/dist/maven/binaries/apache-maven-3.0-beta-2-bin.tar.gz'
  homepage 'http://maven.apache.org/'

  if ARGV.build_head?
    md5 'a40881f56a3087828545f30921ff393f'
  else
    md5 '3f829ed854cbacdaca8f809e4954c916'
  end

  def install
    rm_f Dir["bin/*.bat"]
    prefix.install %w[bin conf boot lib]
  end
end
