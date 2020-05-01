package Docker

class BakeJenkinsImageDsl {

  def steps = { shell('echo hello, world!') }
}
