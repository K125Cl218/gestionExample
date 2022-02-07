package fr.formation.inti.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"fr.formation.inti.service", "fr.formation.inti.dao"})
//@ComponentScan({"fr.formation.inti"}) pour scanner tous les packages
public class AppConfiguration {
	
}
