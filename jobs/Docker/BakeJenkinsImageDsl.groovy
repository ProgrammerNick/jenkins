package Docker

import Docker.Utils

class BakeJenkinsImageDsl {

  def utils = new Utils()

  def mySteps = { 
    shell('echo hello, world!') 
  }

  def steps = mySteps >> utils.steps

}
