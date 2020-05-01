package Docker

import Docker.Utils

class BakeJenkinsImageDsl {

  def mySteps = { 
    shell('echo hello, world!') 
  }

  def steps = steps << Utils.steps

}
