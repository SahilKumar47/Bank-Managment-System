package com.bankapp.model.service;

import java.util.List;

import com.bankapp.web.entities.User;

public interface UserService {
	public User addUser(User user);

	public User updateUser(Integer userId, String email);

	public void deleteUser(Integer userId);

	public List<User> getAllUser();

	public User getUserById(Integer userId);
}
