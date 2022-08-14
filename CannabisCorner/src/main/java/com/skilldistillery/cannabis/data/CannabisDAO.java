package com.skilldistillery.cannabis.data;

import java.util.List;

import com.skilldistillery.cannabis.entities.Cannabis;

public interface CannabisDAO {

	Cannabis findById(int id);

	List<Cannabis> findAll();

	Cannabis create(Cannabis cannabis);
	
	Cannabis delete(int  id);
	
	Cannabis update(int  id, Cannabis cannabis);
}
