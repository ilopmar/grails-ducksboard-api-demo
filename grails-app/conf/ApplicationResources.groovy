modules = {
    application {
        dependsOn 'jquery'
        //defaultBundle 'ui'
        
        resource url='bootstrap/js/bootstrap.js'
        resource url='datepicker/js/bootstrap-datepicker.js'
        resource url='kickstart/js/kickstart.js'
        resource url='js/application.js'
        resource url='js/kaleidos.notifier.js'
        
        resource url='bootstrap/css/bootstrap.css'
        resource url='bootstrap/css/bootstrap-responsive.css'
        resource url='kickstart/css/docs.css'
        resource url='kickstart/css/kickstart.css'
        resource url='datepicker/css/datepicker.css'
        resource url='css/demo.css'
    }
}