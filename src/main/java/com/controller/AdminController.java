package com.controller;


import com.model.User;

import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;


    @GetMapping("/users")
    public String viewUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "admin-users";  // Ensure this corresponds to a valid JSP file
    }


    @PostMapping("/users")
    public String addUser(@ModelAttribute User user) {
        userService.addUser(user);
        return "redirect:/admin/users";
    }

    @PostMapping("/users/{id}")
    public String updateUser(@PathVariable Long id, @ModelAttribute User user) {
        userService.updateUser(id, user);
        return "redirect:/admin/users";  // Update to this path
    }


    @DeleteMapping("/users/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:/admin-users";
    }


  
    
    // Display Admin Dashboard
    @GetMapping("/dashboard")
    public String viewAdminDashboard(Model model) {
        // Pass total users count to the dashboard
        model.addAttribute("usersCount", userService.getAllUsers().size());
        return "admin-dashboard"; // Ensure this corresponds to a valid JSP file
    }
}
