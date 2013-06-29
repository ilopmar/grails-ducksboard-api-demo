package ducksboard.api.demo

import groovy.time.TimeCategory
import grails.converters.JSON

import org.grails.plugins.ducksboard.push.StatusValues

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.MultipartFile
import javax.servlet.http.HttpServletRequest

/**
 * DemoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class DemoController {

    def ducksboardService

    static allowedMethods = [updateLong:"POST", updateDouble:"POST", updateTimestamp:"POST"]

    public updateLong(String widgetId, Long value) {
        def result = ducksboardService.pushLongValue(widgetId, value)

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public updateDouble(String widgetId, Double value) {
        def result = ducksboardService.pushDoubleValue(widgetId, value)

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public updateTimestamp(String widgetId, Date date, Long value) {
        def map = [:]
        map.timestamp = date.time/1000
        map.value = value

        def result = ducksboardService.pushTimestampValues(widgetId, [map])

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public randomTimestamp() {
        def result = ducksboardService.pushTimestampValues('64821', randomList(70, 20))
        result = ducksboardService.pushTimestampValues('64820', randomList(10, 2))

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public pushImage(String widgetId) {
        InputStream inputStream = selectInputStream(request)
        def uploaded = File.createTempFile('ducksboard-api-demo', 'grails')
        uploaded << inputStream
        def result = ducksboardService.pushImage(widgetId, uploaded)

        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public pushStatus(String widgetId, String statusValue) {
        def status
        try {
            status = StatusValues.valueOf(statusValue)
        } catch (java.lang.IllegalArgumentException e) {
            status = StatusValues.UNKNOWN
        }

        def result = ducksboardService.pushStatus(widgetId, status)
        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public pushText(String widgetId, String text) {
        def result = ducksboardService.pushText(widgetId, text)
        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public updateFunnel(String widgetId) {

        def name1 = params.name1
        def name2 = params.name2
        def name3 = params.name3
        def name4 = params.name4
        def name5 = params.name5
        def name6 = params.name6

        def v1 = params.long('value1')
        def v2 = params.long('value2')
        def v3 = params.long('value3')
        def v4 = params.long('value4')
        def v5 = params.long('value5')
        def v6 = params.long('value6')

        def result = ducksboardService.pushFunnel(widgetId, [name1, name2, name3, name4, name5, name6], [v1, v2, v3, v4, v5, v6])
        return render(text:[success:result] as JSON, contentType:'text/json')
    }

    public updateCompletion(String widgetId, Long minimum, Long maximum, Long value) {
        def result = ducksboardService.pushCompletion(widgetId, minimum, maximum, value)
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


    private InputStream selectInputStream(HttpServletRequest request) {
        if (request instanceof MultipartHttpServletRequest) {
            MultipartFile uploadedFile = ((MultipartHttpServletRequest) request).getFile('qqfile')
            return uploadedFile.inputStream
        }
        return request.inputStream
    }
}
