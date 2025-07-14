package com.example.student1.PathController;

import com.example.student1.PathModel.PathModel;
import com.example.student1.PathRepository.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PathController {

    @Autowired
    private repository repo;

   
    // ========== Login Pages ==========

    @GetMapping("/login")
    public String loginPage() {
        return "Login";
    }

    @GetMapping("/adminlogin")
    public String showAdminLogin() {
        return "adminlogin";
    }

    @PostMapping("/adminlogin")
    public String doAdminLogin(@RequestParam String username,
                               @RequestParam String password,
                               Model model) {
        if ("admin".equals(username) && "1234".equals(password)) {
            return "Index";
        } else {
            model.addAttribute("error", "Invalid admin credentials");
            return "adminlogin";
        }
    }

    @GetMapping("/studentlogin")
    public String showStudentLogin() {
        return "studentlogin";
    }

    @PostMapping("/studentlogin")
    public String doStudentLogin(@RequestParam String rollnumber,
                                 @RequestParam String password,
                                 Model model) {
        if (!rollnumber.isEmpty() && !password.isEmpty()) {
            List<PathModel> students = repo.findAll();  // TODO: Match rollnumber and password instead of returning all
            model.addAttribute("students", students);
            return "View";
        } else {
            model.addAttribute("error", "Please fill in all fields");
            return "studentlogin";
        }
    }

    // ========== Student CRUD ==========

    @GetMapping("/home")
    public String showAdminHome() {
        return "Home";
    }

    @GetMapping("/addstudent")
    public String showAddStudentForm(Model model) {
        model.addAttribute("student", new PathModel());
        return "Index";
    }

    @PostMapping("/add")
    public String addStudent(@ModelAttribute PathModel student, Model model) {
        try {
            repo.save(student);
            return "Index";
        } catch (Exception e) {
            model.addAttribute("error", "Roll Number or Email already exists!");
            return "Index";
        }
    }

    @GetMapping("/view")
    public String showStudentList(Model model) {
        List<PathModel> students = repo.findAll();
        model.addAttribute("students", students);
        return "View";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        PathModel student = repo.findById(id).orElse(null);
        if (student == null) {
            model.addAttribute("error", "Student not found with ID: " + id);
            return "error";
        }
        model.addAttribute("student", student);
        return "edit";
    }

    @PostMapping("/updatestudent")
    public String updateStudent(@ModelAttribute PathModel student, Model model) {
        if (student.getId() == null || !repo.existsById(student.getId())) {
            model.addAttribute("error", "Cannot update. Student not found.");
            return "error";
        }
        repo.save(student);
        return "redirect:/view";
    }

    @GetMapping("/deletestudent/{id}")
    public String deleteStudent(@PathVariable("id") Long id) {
        repo.deleteById(id);
        return "redirect:/view";
    }
}