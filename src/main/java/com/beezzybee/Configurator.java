package com.beezzybee;

import javax.servlet.FilterRegistration.Dynamic;
import javax.servlet.annotation.WebListener;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

@WebListener
public class Configurator implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// empty
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext context = event.getServletContext();
		
		Dynamic registration = context.addFilter("authenticationFilter", new AuthenticationFilter());
		registration.setAsyncSupported(true);
		registration.addMappingForUrlPatterns(null, false, "/tickets");
	}

}
