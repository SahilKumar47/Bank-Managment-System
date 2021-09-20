package com.bankapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bankapp.model.dao.Userdao;
import com.bankapp.model.exceptions.UserNotFoundException;
import com.bankapp.web.entities.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	private Userdao userdao;

	@Autowired
	public UserServiceImpl(Userdao userdao) {
		this.userdao = userdao;
	}

	@Override
	public User addUser(User user) {
		userdao.save(user);
		return null;
	}

	@Override
	public User updateUser(Integer userId, String email) {
		User user = getUserById(userId);
		user.setEmail(email);
		userdao.save(user);
		return user;
	}

	@Override
	public void deleteUser(Integer userId) {
		User user = getUserById(userId);
		userdao.delete(user);
	}

	@Override
	public List<User> getAllUser() {
		return userdao.findAll();
	}

	@Override
	public User getUserById(Integer userId) {
		return userdao.findById(userId)
				.orElseThrow(() -> new UserNotFoundException("User by id " + userId + " not found"));
	}
}
