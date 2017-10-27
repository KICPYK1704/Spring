package com.team4.model.designer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DesignerDao implements DesignerDaoInter {
	@Autowired
	private DesignerAnnoInter annoInter;
}
