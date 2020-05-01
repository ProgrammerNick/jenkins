import jobs.docker.BakeJenkinsImageDsl

jenkinsBakeConfig = new BakeJenkinsImageDsl();

job('Bake_Jenkins_Container') {
    
    wrappers {
        environmentVariables {
            env('IMAGE_TAG', 'nick/jenkins')
        }
        credentialsBinding {
            usernamePassword('GH_PAT', 'GH_PAT')
            string('GH_CLIENT_ID', 'GH_CLIENT_ID')
            string('GH_CLIENT_SECRET', 'GH_CLIENT_SECRET')
        }
    }

    scm {
        git {
            remote {
                github('ProgrammerNick/jenkins', 'https')
                credentials('GH_PAT')
            }
            branch('master')
        }
    }
    
    jenkinsBakeConfig.steps
    // steps {
    //     shell('docker build . -t ${IMAGE_TAG}')
    // }
}