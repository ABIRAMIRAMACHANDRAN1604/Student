package com.example.student1.PathRepository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository; // ✅ You missed this import!

import com.example.student1.PathModel.PathModel;

@Repository
public interface repository extends JpaRepository<PathModel, Long> {

    // Find by roll number (for uniqueness check or fetching student)
    PathModel findByRollNumber(String rollNumber);

    // Find by email (to check if already registered)
    PathModel findByEmail(String email);

    // Login validation
    PathModel findByRollNumberAndPassword(String rollNumber, String password);

}
