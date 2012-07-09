<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

<%--
	<section id="intro" class="first">
		<h1>Welcome to Grails using Kickstart with Bootstrap</h1>
		<p>Congratulations, you have successfully started your first
			Grails application with the Kickstart extension! At the moment this
			is the default page, feel free to modify it to either redirect to a
			controller or display whatever content you may choose. Below is a
			list of controllers that are currently deployed in this application,
			click on each to execute its default action:</p>
	</section>

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

	<section id="controller">
		<h1>Widgets</h1>
        
        <h2>Counter</h2>
        <g:formRemote name="counter1" update="updateCounter1" url="[controller:'demo', action:'updateLong', params:[countId:'64746']]">
            <label for="counter1">Counter 1 value</label>
            <g:textField id="counter1" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateCounter1"></div>
        
        <h2>Pins</h2>
        <g:formRemote name="pin1" update="updatePin1" url="[controller:'demo', action:'updateLong', params:[countId:'64578']]">
            <label for="pin1">Pin 1 value</label>
            <g:textField id="pin1" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updatePin1"></div>
        
        <g:formRemote name="pin2" update="updatePin2" url="[controller:'demo', action:'updateLong', params:[countId:'64577']]">
            <label for="pin2">Pin 2 value</label>
            <g:textField id="pin2" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updatePin2"></div>
        
        
        <h2>Boxes</h2>
        <g:formRemote name="box1" update="updateBox1" url="[controller:'demo', action:'updateLong', params:[countId:'64741']]">
            <label for="box1">Box 1 value</label>
            <g:textField id="box1" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBox1"></div>
        
        <g:formRemote name="box2" update="updateBox2" url="[controller:'demo', action:'updateLong', params:[countId:'64740']]">
            <label for="box2">Box 2 value</label>
            <g:textField id="box2" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBox2"></div>
        
        <g:formRemote name="box3" update="updateBox3" url="[controller:'demo', action:'updateLong', params:[countId:'64739']]">
            <label for="box3">Box 3 value</label>
            <g:textField id="box3" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBox3"></div>
        
        <h2>Bars</h2>
        <g:formRemote name="bar1" update="updateBar1" url="[controller:'demo', action:'updateLong', params:[countId:'64742']]">
            <label for="bar1">Bar 1 value</label>
            <g:textField id="bar1" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBar1"></div>
        
        <g:formRemote name="bar2" update="updateBar2" url="[controller:'demo', action:'updateLong', params:[countId:'64743']]">
            <label for="bar2">Bar 2 value</label>
            <g:textField id="bar2" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBar2"></div>
        
        <g:formRemote name="bar3" update="updateBar3" url="[controller:'demo', action:'updateLong', params:[countId:'64744']]">
            <label for="bar3">Bar 3 value</label>
            <g:textField id="bar3" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBar3"></div>
        
        <g:formRemote name="bar4" update="updateBar4" url="[controller:'demo', action:'updateLong', params:[countId:'64745']]">
            <label for="bar4">Bar 4 value</label>
            <g:textField id="bar4" name="value"/>
            
            <g:submitButton name="Update" value="Update"/>        
        </g:formRemote>
        <div id="updateBar4"></div>
        
        
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
