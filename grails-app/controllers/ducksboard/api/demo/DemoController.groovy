package ducksboard.api.demo

/**
 * DemoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class DemoController {
    
    def ducksboardService

    static allowedMethods = [updateLong:"POST", updateDouble:"POST", updateTimestamp:"POST"]
    
    def updateLong(String widgetId, Long value) {
        def result = ducksboardService.pushLongValue(widgetId, value)
        
        if (result) {
            render "Widget updated"
        } else {
            render "There was an error updating the widget"
        }
    }
    
    def updateDouble(String widgetId, Double value) {
        def result = ducksboardService.pushDoubleValue(widgetId, value)
        
        if (result) {
            render "Widget updated"
        } else {
            render "There was an error updating the widget"
        }
    }
    
    def updateTimestamp(String widgetId, Date date, Long value) {
        def map = [:]
        map.timestamp = date.time/1000
        map.value = value 
        
        def result = ducksboardService.pushTimestampValues(widgetId, [map])
        
        if (result) {
            render "Widget updated"
        } else {
            render "There was an error updating the widget"
        }
    }

    
}
