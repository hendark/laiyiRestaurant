package com.zy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.EvaluationUser;
import com.zy.service.EvaluationService;

@Controller
@RequestMapping("/evaluation")
public class EvaluationController {
	@Autowired
	private EvaluationService evaluationService;

	@RequestMapping("/lookEvaluation")
		public ModelAndView lookEvaluation(
				ModelAndView mv)throws Exception{
			List<EvaluationUser> evaluations = evaluationService.selectAll();
			mv.addObject("evaluations", evaluations);
			mv.setViewName("employees/evaluation");
			return mv;
		}
	
	

}
