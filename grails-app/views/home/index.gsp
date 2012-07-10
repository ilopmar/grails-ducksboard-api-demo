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

<%--
	<section id="intro2">
		<h2>Introduction</h2>
		<p>Kickstart is an extension for Grails in order to start your
			project with a good looking frontend. It is intended to be used in
			rapid application scenarios such as a Startup Weekend or a
			prototyping session with a customer. This plugin provides adapted
			scaffolding templates for standard CRUD pages using the Bootstrap web
			page template by Twitter. Additionally, Kickstart includes some
			general GSPs pages (e.g., about.gsp), a minimal logging/orientation
			Filter, and a language switcher.</p>
		<p>Currently, Kickstart is intended to act more like an injection
			than an plugin - importent files are copied into your project and you
			can remove the plugin afterwards.</p>
	</section>

	<section id="info">
		<div class="row">
			<div class="span4">
				<h2>Usage</h2>
				<p>After installation you can call the script "grails
					kickstartWithBootstrap" which will copy several files into your
					project. It will overwrite only few files (e.g., in conf, src, and
					views) - '''you should use it only on fresh new Grails projects'''.
				</p>
				<p>Afterwards create your domain classes (or copy them into the
					project) and generate contollers and views - they will now use the
					Bootstrap framework!</p>
			</div>
			<div class="span4">
				<h2>Notes</h2>
				<p></p>
				<ul>
					<li>Currently, only tested with Grails 1.3.7!</li>
					<li>Does only use plain Bootstrap (currently, without Less).</li>
					<li>The plugin copies the files into your project - you can
						uninstall the plugin thereafter.</li>
					<li>It does NOT use the Bootstrap plugin.</li>
				</ul>
			</div>
			<div class="span4">
				<h2>Terms of Use</h2>
				<p></p>
				<ul>
					<li>Bootstrap (from Twitter): Code licensed under the Apache
						License v2.0. Documentation licensed under CC BY 3.0.
						(@TwBootstrap , http://twitter.github.com/bootstrap/)</li>
					<li>Kickstart Plugins: Code licensed under the Apache License
						v2.0. Documentation licensed under CC BY 3.0. Copyright 2011 Jörg
						Rech (@JoergRech, http://joerg-rech.com)</li>
				</ul>
			</div>
		</div>
	</section>
 --%>

    

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
        
        <%--
		<div id="controllerList" class="dialog">
			<ul data-role="listview" data-split-icon="gear" data-filter="true">
				<g:each var="c"
					in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<li class="controller"><g:link
							controller="${c.logicalPropertyName}">
							${c.fullName.substring(c.fullName.lastIndexOf('.')+1)}
						</g:link> (<small>
							${c.fullName}
					</small>)</li>
				</g:each>
			</ul>
		</div>
         --%>
	</section>

</body>

</html>
