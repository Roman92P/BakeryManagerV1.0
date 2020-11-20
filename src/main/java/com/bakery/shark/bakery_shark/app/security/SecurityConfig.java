package com.bakery.shark.bakery_shark.app.security;

import com.bakery.shark.bakery_shark.app.user.SpringDataUserDetailsService;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public SpringDataUserDetailsService customUserDetailsService() {
        return new SpringDataUserDetailsService();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/static/**", "/js/**", "/images/**", "/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/", "/user/create-user","/activate/*").permitAll()
                .requestMatchers(PathRequest.toStaticResources().atCommonLocations()).permitAll()
                .antMatchers("/main").hasAnyRole("ADMIN")
                .antMatchers("/kitchen/**").hasAnyRole("ADMIN","USER")
                .antMatchers("/cashRegister/**").hasAnyRole("ADMIN","USER")
                .antMatchers("/ingredient/**").hasAnyRole("ADMIN")
                .antMatchers("/recipe/**").hasAnyRole("ADMIN")
                .antMatchers("/recipeItem/**").hasAnyRole("ADMIN")
                .antMatchers("/product/**").hasAnyRole("ADMIN")
                .antMatchers("/stock/**").hasAnyRole("ADMIN","USER")
                .and().formLogin().loginPage("/login")
                .and().logout().logoutSuccessUrl("/login")
                .permitAll()
                .and().exceptionHandling().accessDeniedPage("/403");
    }
}