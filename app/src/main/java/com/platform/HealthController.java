package com.platform;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;
import java.util.Map;

@RestController
public class HealthController {

    @Value("${app.environment:local}")
    private String environment;

    @GetMapping("/")
    public Map<String, String> home() {
        return Map.of(
                "service", "eks-devops-platform",
                "status", "running",
                "environment", environment
        );
    }

    @GetMapping("/api/orders")
    public Map<String, Object> orders() {
        return Map.of(
                "message", "sample business API response",
                "count", 3,
                "timestamp", Instant.now().toString()
        );
    }
}
