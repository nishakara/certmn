package com.cert;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class ClientController {

    @Autowired
    private CredentialManager credentialManager;

    @Autowired
    private MonitorManager monitorManager;

    @GetMapping("/")
    public String loadModelPage(Model model) {
        return "dashboard";
    }

    @GetMapping("/login")
    public String loadLoginPage(Model model) {
        return "login";
    }

    @GetMapping("/monitors")
    public String loadMonitorsPage(Model model) {
        return "monitors";
    }

    @PostMapping("SubmitCredentials")
    public String submitCredentials(Model model, @RequestParam String userName, @RequestParam String password) {
        System.out.println("Login request received : " + userName + "|" + password);
        if (credentialManager.validateCredentials(userName, password))
            return "dashboard";
        else
            return "login";
    }

    @PostMapping("CreateAccount")
    public String submitCredentials(Model model, @RequestParam String email, @RequestParam String pswd,
                                    @RequestParam String groupEmail) {
        System.out.println("Create-Account request received : " + email + "|" + pswd + "|" + groupEmail);
        try {
            if (credentialManager.createAccount(email, pswd, groupEmail))
                return "dashboard";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "login";
    }

    @PostMapping("CreateMonitor")
    public String createMonitor(Model model, @RequestParam String monitorName, @RequestParam String hostName,
                                @RequestParam String alertDays,  @RequestParam String groupEmail, @RequestParam String port) {
        System.out.println("Create-Monitor request received : " + monitorName + "|" + hostName + "|" + alertDays + "|" + port);
        try {
            monitorManager.createMonitor(monitorName, hostName, alertDays, groupEmail, port);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "monitors";
    }

    @GetMapping(value = "/getMonitors/{userId}")
    public ResponseEntity<?> getMonitors(@PathVariable("userId") String userId) {
        System.out.println("Get-Monitors request received for the user with ID : " + userId);
        try {
            List<Map> monitorList = monitorManager.getMonitorsForUser(userId);
            return new ResponseEntity<>(monitorList, HttpStatus.OK);
        } catch (Exception e) {
            System.out.println("Error occurred while retrieving monitors");
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }
}
