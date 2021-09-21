package com.bankapp.sec.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
//@Configuration
import org.springframework.security.crypto.password.PasswordEncoder;
@EnableWebSecurity
public class WebSecConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private UserDetailsService userDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}
	

	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}

	//authorization
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http//.csrf().disable()
		.authorizeRequests()
		.antMatchers("/user/**").hasAnyRole("ADMIN")
		.antMatchers("/trasaction/**").hasAnyRole("ADMIN","CLK")
		.antMatchers("/customer/**").hasAnyRole("ADMIN","CLK")
		.antMatchers("/home/**").hasAnyRole("ADMIN","CLK")
		.and()
		.formLogin()
		.loginPage("/login").loginProcessingUrl("/myloginprocessor")
			.usernameParameter("username").passwordParameter("password").defaultSuccessUrl("/home")
		.permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/accessdenied")
		.and()
		.sessionManagement().maximumSessions(1);
	}	
}
