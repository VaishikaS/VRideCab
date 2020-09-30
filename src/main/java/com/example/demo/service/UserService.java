package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.users;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public void save(users u) {
		userRepository.save(u);
	}

	public users getUserbyId(long id) {
		
		return userRepository.findById(id).orElse(null);
	}

	
}
