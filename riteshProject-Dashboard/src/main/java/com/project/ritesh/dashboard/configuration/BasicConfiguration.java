package com.project.ritesh.dashboard.configuration;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
@ConfigurationProperties("basic")
public class BasicConfiguration {
	private String url;

	
	
}
