package com.team4.model.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao implements ProductDaoInter {
	@Autowired
	private ProductAnnoInter annoInter;
}
