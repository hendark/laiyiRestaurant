package com.zy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.Evaluation;
import com.zy.po.EvaluationUser;
import com.zy.po.User;
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
	
	@RequestMapping("/toInsertEvaluation")
	public ModelAndView toInsertEvaluation(
			@RequestParam("id") int id,
			HttpSession session,
			ModelAndView mv)throws Exception{
		User user = (User)session.getAttribute("user");
		int userid = user.getId();
		mv.addObject("userid", userid);
		mv.addObject("id", id);
		mv.setViewName("user/insertEvaluation");
		return mv;
	}

	
	@RequestMapping("/insertEvaluation")
		public ModelAndView insertEvaluation(
				Evaluation evaluation,
				ModelAndView mv)throws Exception{
			evaluationService.insert(evaluation);
			mv.setViewName("redirect:/order/userMyOrder.action");
			return mv;
		}
	
	@RequestMapping("/userLookMyEvaluation")
	public ModelAndView userLookMyEvaluation(
			@RequestParam("foodid") int foodid,
			HttpSession session,
			ModelAndView mv)throws Exception{
		User user = (User)session.getAttribute("user");
		List<Evaluation> evaluations = evaluationService.selectAllByFoodIdAndUserId(foodid, user.getId());
		mv.addObject("evaluations", evaluations);
		mv.setViewName("user/lookEvaluation");
		return mv;
	}
	
	@RequestMapping("/delEvaluation")
	public ModelAndView delEvaluation(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		evaluationService.del(id);
		mv.setViewName("redirect:/order/userMyOrder.action");
		return mv;
	}
}
