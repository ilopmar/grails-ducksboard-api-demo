package ducksboard.api.demo

import groovy.time.TimeCategory
import grails.converters.JSON

/**
 * DemoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class DemoController {

    def ducksboardService

    static allowedMethods = [updateLong:"POST", updateDouble:"POST", updateTimestamp:"POST"]

    def updateLong(String widgetId, Long value) {
        def result = ducksboardService.pushLongValue(widgetId, value)

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    def updateDouble(String widgetId, Double value) {
        def result = ducksboardService.pushDoubleValue(widgetId, value)

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    def updateTimestamp(String widgetId, Date date, Long value) {
        def map = [:]
        map.timestamp = date.time/1000
        map.value = value

        def result = ducksboardService.pushTimestampValues(widgetId, [map])

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    def randomTimestamp() {
        def result = ducksboardService.pushTimestampValues('64821', randomList(70, 20))
        result = ducksboardService.pushTimestampValues('64820', randomList(10, 2))

        return render(text:[success:result] as JSON, contentType:'text/json')
    }


    private List<Map> randomList(Integer base = 50, min = 20) {

        Calendar cal = Calendar.getInstance()
        cal.set(Calendar.HOUR, 0)
        cal.set(Calendar.HOUR_OF_DAY, 0)
        cal.set(Calendar.MINUTE, 0)
        cal.set(Calendar.SECOND, 0)
        cal.set(Calendar.MILLISECOND, 0)

        def endDate = cal.clone()
        def startDate
        use (TimeCategory) {
            startDate = endDate.time - 1.month
        }

        Date a1 = startDate
        Date b1 = endDate.time

        def random = new Random()

        def list = []
        for(date in b1..a1) {
            def map = [:]
            map.timestamp = date.time/1000
            map.value = random.nextInt(base) + min

            list << map
        }

        return list
    }

}
