pipelineJob('pipelineJob') {
    definition {
        cps {
            script(readFileFromWorkspace('pipelineJob.groovy'))
            sandbox()
        }
    }
}

pipelineJob('portal-job') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url 'https://github.com/vreyvrey/portal.git'
                    }
                    branch 'master'
                    credentials("portal-creds")
                }
            }
        }
    }
}