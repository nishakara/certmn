package com.cert;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MonitorManager {

    @Autowired
    private CertRepository certRepository;


    public boolean createMonitor(String monitorName, String hostName, String alertDays, String groupEmail, String port) throws Exception {
       if (!certRepository.isMonitorExist(monitorName)) {
           boolean resultStatus = certRepository.createMonitor(monitorName, hostName, alertDays, groupEmail, port);
           if (resultStatus) System.out.println("Monitor with the name [" + monitorName + "] created successfully");
           return resultStatus;
       } else {
           System.out.println("Monitor with the name [" + monitorName + "] already exists");
       }
       return false;
    }

    public List<Map> getMonitorsForUser(String userId) throws Exception {
        return certRepository.getMonitorsForUser(userId);
    }
}
