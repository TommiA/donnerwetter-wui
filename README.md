# donnerwetter-wui
This is a simple web frontend for the Donnerwetter weather data backend. Technologies used include
SpringBoot, bootstrap, JSP and AJAX. This web UI is provided within an executable isolated Tomcat container and is
accessible with a browser. This communicates with the Donnerwetter backend with JSON over HTTP.

### To build
Just to build runnable java jar use  

`$ mvn package`  

to produce an executable jar into the target folder. The appropriate server infrastructure is included.

### To run
To run execute  

`$ jar tvf target/[filename].jar`  

To both build and run use  

`$ mvn spring-boot:run`

The Donnerwetter backend is expected to be reachable at http://localhost:8080. Reconfigure the application.properties file if needed.
See https://github.com/TommiA/Donnerwetter for more details.

### To use
Provided that the web frontend starts as supposed it will be available at [http://localhost:8081] with your browser.
To search for the temperature in a desired location set the city and country names to the appropriate boxes and click submit.
At the moment none of the layers will handle the Scandinavian alphabet properly so drop those umlauts or receive results in
new exciting places you've never heard about :D
