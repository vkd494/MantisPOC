package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Mantis;
import com.example.demo.service.MantisService;

@RestController
@RequestMapping("/api/mantis")
public class MantisController {
    @Autowired
    private MantisService mantisService;

    @GetMapping("/{projectId}")
    public List<Mantis> getMantisIdsByProject(@PathVariable int projectId) {
        return mantisService.getMantisIdsByProject(projectId);
    }
}

