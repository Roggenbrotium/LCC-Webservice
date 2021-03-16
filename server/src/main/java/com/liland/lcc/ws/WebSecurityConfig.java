package com.liland.lcc.ws;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http.cors().and().csrf().disable()
				.exceptionHandling().and()
				.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
				.addFilter(new JWTAuthorizationFilter(authenticationManager()))
				.authorizeRequests()
				.antMatchers("/registry/add").permitAll()
				.antMatchers("/registry/addAdmin").permitAll()
				.antMatchers("/registry/adopt").hasRole("ADMIN")
				.antMatchers("/registry/login").permitAll()
				.antMatchers("/registry/list").hasRole("ADMIN")
				.antMatchers("/registry/delete").permitAll()
				.antMatchers("/registry/heartbeat").hasRole("USER")
				.antMatchers("/ws/tenants/add").hasRole("USER")
				.antMatchers("/ws/tenants/update").hasRole("USER")
				.antMatchers("/ws/tenants/list").hasRole("USER")
				.antMatchers("/ws/tenants/delete").hasRole("USER")
				.anyRequest().authenticated();
	}
}
