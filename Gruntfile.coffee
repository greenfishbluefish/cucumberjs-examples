'use strict'

module.exports = (grunt)->
  grunt.initConfig
    cucumberjs:
      files: 'features'
      options:
        format: 'pretty'
      phantom:
        options:
          steps: 'features/step-definitions.phantom'
          support: 'features/support.phantom'
    phantom:
      cucumber:
        port: 4444

  grunt.loadNpmTasks 'grunt-cucumber'
  grunt.loadNpmTasks 'grunt-phantom'

  grunt.registerTask 'example-phantom', [
    'phantom',
    'cucumberjs:phantom',
  ]
