<%@page import ="org.grails.plugins.ducksboard.push.StatusValues"%>
<html>

<head>
    <title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
    <meta name="layout" content="kickstart" />
</head>

<body>

    <section id="intro" class="first">
        <r:img class="logo" dir="images" file="Ducksboard_small_logo.png" width="120" heigth="120" border="0" />
        <div class="wrapper-title">
          <p class="p1">This is a Grails demo project for the <a href="http://grails.org/plugin/ducksboard-api">ducksboard-api plugin</a>.
            You can use this project to update the widgets that are displayed in this public dashboard:
          </p>
          <p class="p1"><a href="https://public.ducksboard.com/UcD_CtknoMaEDbIJo8Eo/" target="_blank">https://public.ducksboard.com/UcD_CtknoMaEDbIJo8Eo/</a></p>
          <p class="p1">
            The source code of this project is available at:
                <a href="https://github.com/lmivan/grails-ducksboard-api-demo">https://github.com/lmivan/grails-ducksboard-api-demo</a>
          </p>
        </div>
    </section>

    <section>
        <h1>Widgets</h1>

        <h2>Counter</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="counter1" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64746']]">
                    <label for="counter1">Counter 1 value</label>
                    <g:textField id="counter1" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Pins</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="pin1" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64578']]">
                    <label for="pin1">Pin 1 value</label>
                    <g:textField id="pin1" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="pin2" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64577']]">
                    <label for="pin2">Pin 2 value</label>
                    <g:textField id="pin2" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Boxes</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="box1" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64741']]">
                    <label for="box1">Box 1 value</label>
                    <g:textField id="box1" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="box2" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64740']]">
                    <label for="box2">Box 2 value</label>
                    <g:textField id="box2" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="box3" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64739']]">
                    <label for="box3">Box 3 value</label>
                    <g:textField id="box3" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>


        <h2>Bars</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="bar1" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64809']]">
                    <label for="bar1">Bar 1 value</label>
                    <g:textField id="bar1" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="bar2" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64808']]">
                    <label for="bar2">Bar 2 value</label>
                    <g:textField id="bar2" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="bar3" onSuccess="_after(data)" url="[controller:'demo', action:'updateLong', params:[widgetId:'64807']]">
                    <label for="bar3">Bar 3 value</label>
                    <g:textField id="bar3" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Gauges</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="gauge1" onSuccess="_after(data)" url="[controller:'demo', action:'updateDouble', params:[widgetId:'64748']]">
                    <label for="gauge1">Gauge 1 value</label>
                    <g:textField id="gauge1" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="gauge2" onSuccess="_after(data)" url="[controller:'demo', action:'updateDouble', params:[widgetId:'64747']]">
                    <label for="gauge2">Gauge 2 value</label>
                    <g:textField id="gauge2" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Graphs</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="graph1" onSuccess="_after(data)" url="[controller:'demo', action:'updateTimestamp', params:[widgetId:'64800']]">
                    <label>Date </label>
                    <div class="input-append date" id="datepicker" data-date-format="dd/mm/yyyy">
                        <input class="date-select" name="date" size="6" type="text" value="" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>

                    <label for="graph1">Graph 1 value</label>
                    <g:textField id="graph1" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="graph2" onSuccess="_after(data)" url="[controller:'demo', action:'updateTimestamp', params:[widgetId:'64799']]">
                    <label>Date </label>
                    <div class="input-append date" id="datepicker" data-date-format="dd/mm/yyyy">
                        <input class="date-select" name="date" size="6" type="text" value="" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>

                    <label for="graph2">Graph 2 value</label>
                    <g:textField id="graph2" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper">
                <g:formRemote name="graph3" onSuccess="_after(data)" url="[controller:'demo', action:'updateTimestamp', params:[widgetId:'64798']]">
                    <label>Date </label>
                    <div class="input-append date" id="datepicker" data-date-format="dd/mm/yyyy">
                        <input class="date-select" name="date" size="6" type="text" value="" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>

                    <label for="graph3">Graph 3 value</label>
                    <g:textField id="graph3" name="value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>

            <div class="widget-wrapper clear">
                <label>Update the graph with some random data</label>
                <g:formRemote name="randomGraph" onSuccess="_after(data)" url="[controller:'demo', action:'randomTimestamp']">

                <g:submitButton name="Update" value="Random graphs!"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Status</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="status" onSuccess="_after(data)" url="[controller:'demo', action:'pushStatus', params:[widgetId:'169073']]">
                    <label for="graph1">Status value</label>
                    <g:select name="statusValue" from="${StatusValues.values()}" />

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Text</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="text" onSuccess="_after(data)" url="[controller:'demo', action:'pushText', params:[widgetId:'169104']]">
                    <label for="graph1">Status value</label>
                    <g:textArea name="text" placeholder="Please write the text to send to the widget" style="width:380px; height:115px"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Funnels</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="funnel1" onSuccess="_after(data)" url="[controller:'demo', action:'updateFunnel', params:[widgetId:'169128']]">
                    <label for="funnel1">Funnel values</label>
                    <g:textField id="name1" name="name1" placeholder="Name of the step 1"/>
                    <g:textField id="value1" name="value1" placeholder="Value 1"/><br/>

                    <g:textField id="name2" name="name2" placeholder="Name of the step 2"/>
                    <g:textField id="value2" name="value2" placeholder="Value 2"/><br/>

                    <g:textField id="name3" name="name3" placeholder="Name of the step 3"/>
                    <g:textField id="value3" name="value3" placeholder="Value 3"/><br/>

                    <g:textField id="name4" name="name4" placeholder="Name of the step 4"/>
                    <g:textField id="value4" name="value4" placeholder="Value 4"/><br/>

                    <g:textField id="name5" name="name5" placeholder="Name of the step 5"/>
                    <g:textField id="value5" name="value5" placeholder="Value 5"/><br/>

                    <g:textField id="name6" name="name6" placeholder="Name of the step 6"/>
                    <g:textField id="value6" name="value6" placeholder="Value 6"/><br/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Completion</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <g:formRemote name="completion1" onSuccess="_after(data)" url="[controller:'demo', action:'updateCompletion', params:[widgetId:'182966']]">
                    <label for="funnel1">Completion values</label>
                    <g:textField id="minimum" name="minimum" placeholder="Minimum value"/>
                    <g:textField id="maximum" name="maximum" placeholder="Maximum value "/>
                    <g:textField id="value" name="value" placeholder="Current value"/>

                    <g:submitButton name="Update" value="Update"/>
                </g:formRemote>
            </div>
        </div>

        <h2>Image</h2>
        <div class="widget">
            <div class="widget-wrapper">
                <div class="uploader">
                    <label for="image1">Select an image (it will be pushed automatically after you select it)</label>
                    <input type="file" name="fileToUpload" id="fileToUpload" accept="image/*" autocomplete="off" rel="${createLink(controller:'demo', action:'pushImage', params:[widgetId:'65628'])}"/>
                </div>
                <r:img class="spinner hidden" dir="images" file="spinner-upload.gif" width="32" heigth="32" />
            </div>
        </div>

    </section>

</body>

</html>
